---
title: Server and Client Setup
sidebar_position: 1
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

This guide is intended to make setting up a Fiesta Online server and client as straightforward as possible.


## Choose a file set

We currently support the following file sets:

- NA2016
- CN2012
- TW2008

You need to decide on one file set. If you are new, we recommend starting out with NA2016.

## Prerequisites

### Minimum recommended hardware

These recommendations are intended for smooth performance, but smaller test setups can run with fewer resources, especially if you are only using one zone. Extra storage is strongly recommended, as disk usage can grow quickly.

| Category                        | Requirement                                                                                                                               |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| **Supported Operating Systems** | Windows Server 2016, 2019, 2022, 2025 or Windows 10, 11                                                                                   |
| **Minimum RAM**                 | 16 GB                                                                                                                                     |
| **Minimum CPU**                 | 4 cores / 4 threads                                                                                                                       |
| **Minimum Disk Space**          | 128 GB                                                                                                                                    |

### Before you start

:::info
In this guide, "server" refers to the machine running the Fiesta server files, and "client" refers to the machine used to play the game.

If you do not have a dedicated server or VPS, you can install the server on your regular PC instead. The default setup assumes that the server and client are running on the same machine.
:::

Download the following on your server:

- [Microsoft SQL Server 2025](https://go.microsoft.com/fwlink/p/?linkid=2216019&clcid=0x409&culture=en-us&country=us)
- [Microsoft SQL Server Management Studio](https://aka.ms/ssmsfullsetup)

Download the matching server files to your server and the matching client to your client machine, depending on your chosen file set:

| File Set | Server | Client |
| --- | --- | --- |
| NA2016 | [Download](https://github.com/FiestaHeroes/NA2016/archive/refs/heads/main.zip) | [Download](https://drive.google.com/file/d/1lcKw6E_hLCFAWoxWiIxTXXor1oFhUZtf/view?usp=sharing) |
| CN2012 | [Download](https://github.com/FiestaHeroes/CN2012/archive/refs/heads/main.zip) | [Download](https://drive.google.com/file/d/1lpbUAJErXZDVB3Yy10EeV4QKZIudvQ-z/view?usp=sharing) |
| TW2008 | [Download](https://github.com/FiestaHeroes/TW2008/archive/refs/heads/main.zip) | [Download](https://drive.google.com/file/d/1zSxkPSevF7YtBuJhKeaNGAfzLcuAi_Dy/view?usp=sharing) |

### Configure SQL Server

Next, set up the database.

Run the SQL Server installer you downloaded earlier, then install Microsoft SQL Server Management Studio.

Verify that Microsoft SQL Server is installed and configured correctly before continuing.
You **must** enable `SQL Server and Windows Authentication mode` and enable the `sa` account.

:::caution
If you did not do this during installation, follow these steps:
1. Connect to your SQL Server instance in Microsoft SQL Server Management Studio
2. Open Server Properties.
3. Select and enable SQL Server and Windows Authentication mode, then click OK.
4. Restart the `SQL Server (SQLEXPRESS)` service. You can do this by: `Win + X > Run > services.msc`.
5. Navigate to `Security > Logins`.
6. Right-click on `sa` and select `Properties`.
7. Set a password for the sa account.
8. Go to `Status` and ensure `Login` is set to `Enabled`, then click OK.
:::

The default password for our `9Data/ServerInfo/ServerInfo.txt` configuration is `V63WsdafLJT9NDAn`. If your setup uses a different password, you will need to update it accordingly. This information can be found within the ServerInfo.txt document itself in the comments.

You can also utilize newer installations of Microsoft SQL Server, provided that the version is equal to or greater than the required version for your file set.

## Installation

Choose one installation method:
- [Script Setup](#script-setup)
- [Manual Setup](#manual-setup)

Script setup is faster and recommended for most users.

#### [NA2016](#choose-a-file-set) - YouTube Guide 

Here's a video walkthrough of the [script setup](#script-setup) process.

[![Thumbnail](http://img.youtube.com/vi/mup7r9PRG0c/0.jpg)](https://www.youtube.com/watch?v=mup7r9PRG0c "FH: NA2016 - Quick Windows Server 2025 VM Setup")

### Script Setup

Before running the scripts, confirm the following:
- Ensure that you have properly installed and configured Microsoft SQL Server. The scripts utilize Windows authentication mode and the default server instance name is `./SQLEXPRESS`. This name should be automatically selected by default during SQL Server installation. **If you altered the instance name during the installation process, you will need to make the appropriate changes to the scripts**.
- Ensure that you are in the server directory of the downloaded files before proceeding.
- **Make sure you have administrator privileges**. These scripts will attempt to elevate to administrator access automatically.

:::tip
If you encounter the error message "cannot be loaded because running scripts is disabled on this system", run the command below in PowerShell with administrative privileges.

```bash
Set-ExecutionPolicy Unrestricted -Force
```
:::

:::caution
Our script ```_Install Databases.ps1``` **will only restore databases to the `C:\` drive by default**. Therefore, if your installation path is not ```C:\Program Files\Microsoft SQL Server```, you will need to [manually](#manual-setup) restore the databases.

It is **strongly advised** that you use the specific SQL Server version listed in the [prerequisites](#prerequisites) section.
:::

:::danger
We **strongly** recommend that you keep the original database names when restoring. There are specific [stored procedure](https://www.w3schools.com/sql/sql_stored_procedures.asp) edits that rely on these names, and changing them **will break** the functionality.
:::

#### Scripts

| Script | Purpose | Notes |
| --- | --- | --- |
| `_Create Firewall Rule.ps1` | Opens required TCP ports. | |
| `_Install Databases.ps1` | Restores all databases. | Only supports `C:\` by default; otherwise use [manual setup](#manual-setup). |
| `_Install Services.ps1` | Installs all services. | Prompts for each service. |

If you encounter any problems, check the following:
- You have properly installed and configured Microsoft SQL Server
- The scripts use the correct SQL instance name 
- You ran the scripts with admin privileges 
- You are in the correct working directory

If you continue to experience issues after checking these, dont hesitate to contact us on our [Discord server](https://discord.com/invite/TCFzBPgtPX).

### Manual Setup

Open Microsoft SQL Server Management Studio and connect to your SQL Server instance. Once connected, right-click on "Databases" and select "Restore Database".

Select "Device:" and navigate to the backup directory for your server's databases. By default, this is `/Databases/` in the downloaded files.

Restore each database one at a time until all of the following have been successfully restored:
- Account
- AccountLog
- OperatorTool
- StatisticsData
- World00_Character
- World00_GameLog
- Options

:::danger
We **strongly** recommend that you keep the original database names when restoring. There are specific [stored procedure](https://www.w3schools.com/sql/sql_stored_procedures.asp) edits that rely on these names, and changing them **will break** the functionality.
:::

Additionally, you will need to install the following services based on your chosen set.
**Right-click each of these executables and choose "Run as administrator"**:

<Tabs groupId="fileset-full">
  <TabItem value="na" label="NA2016" default>

```
Account/Account.exe
AccountLog/AccountLog.exe
Character/Character.exe
GameLog/GameLog.exe
GamigoZR/install.bat
Login/Login.exe
WorldManager/WorldManager.exe
Zone00/Zone.exe
Zone01/Zone.exe
Zone02/Zone.exe
Zone03/Zone.exe
Zone04/Zone.exe
```

:::caution
Ensure that you run all of these files as an administrator by right-clicking on the file and selecting "Run as administrator". For the GamigoZR ```install.bat```, modify it to match your file system layout. This is **not needed** when using our [script](#script-setup) setup.
:::

**Ensure that you run and apply the following registry files**:

```
Fantasy.reg
GBO.reg
```
:::danger
**If this step is not performed, you will fail to get in-game.**
:::

  </TabItem>
  <TabItem value="cn" label="CN2012">

```
Account/Account.exe
AccountLog/AccountLog.exe
Character/Character.exe
GameLog/GameLog.exe
Login/Login.exe
WorldManager/WorldManager.exe
Zone00/Zone.exe
Zone01/Zone.exe
Zone02/Zone.exe
Zone03/Zone.exe
```

  </TabItem>
  <TabItem value="tw" label="TW2008">

```
Account/Account.exe
AccountLog/AccountLog.exe
Character/Character.exe
GameLog/GameLog.exe
Login/Login.exe
WorldManager/WorldManager.exe
Zone00/Zone.exe
Zone01/Zone.exe
Zone02/Zone.exe
```

  </TabItem>
</Tabs>

### Configuration

Locate and open the following configuration file:

```
9Data/ServerInfo/ServerInfo.txt
```

This file includes detailed comments throughout.

Be sure to take your time and follow the instructions carefully. Additionally, **ensure that the IP Addresses are kept within the quotation marks**.

:::caution
If the line ends with ";LOCALHOST", do not change it to another IP address as indicated in the document.
:::

:::tip
If you're running on a home network, and want a public server, make sure to extract the ```LAN_ServerInfo.zip``` over the default files. As Fiesta sends the IP addresses it reads from ServerInfo to the client, it would send the LAN IP address to remote networks as well. Using this custom setup, you will have the relevant public IP addresses be sent to the client, while being able to listen on your LAN interface.
:::

## Client Setup

 After downloading the matching client for your file set, configure and launch `Game.bat`:

<Tabs>
  <TabItem value="local" label="Localhost" default>
  
If your server is configured as localhost, editing the file is not necessary. Simply run the file and the game will launch.

  </TabItem>
  <TabItem value="global" label="LAN / Public">

The following parameters must be edited:

<ul>
  <li><code>-i</code> : The IP of the server you're connecting to.</li>
  <li><code>-p</code> : The login port of the server you are connecting to. By default, we use 9010 for all our sets.</li>
</ul>

  </TabItem>

</Tabs>


After configuring this batch file successfully, run it. The game will launch. If you have followed all the instructions correctly, you should be able to log in and start playing.

#### Create an Account

All of our sets include automatic account creation. When creating your account, you will need to use the ```r_``` prefix. For example, if you want to create the account `admin/admin` (username and password), you will need to enter `r_admin/admin`.

Simply do this on the login screen, and the account will be added to the database: `Account > Tables > tUser`.

Additionally, by changing your account's ```nAuthID``` from ***1*** to ***9***, every character you create will be granted level 100 admin power automatically.

#### Live Server Recommendation

We suggest reviewing our [options](database#options-database) for database configuration and documentation. You can disable automatic account creation and adjust other settings to better suit your public or private server.
