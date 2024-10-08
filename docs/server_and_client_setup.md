---
title : Server Setup
sidebar_position: 1
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

## Set Selection

Our setup is intended to be as straightforward as possible. We currently offer support for the following sets:

- [NA2016](https://github.com/FiestaHeroes/NA2016/)
- [CN2012](https://github.com/FiestaHeroes/CN2012/)
- [TW2008](https://github.com/FiestaHeroes/TW2008/)

## Prerequisites

Before proceeding, ensure that your server has met the following prerequisites:

#### Supported Operating Systems

- Windows Server: 2016, 2019, 2022, 2025
- Windows: 10, 11

#### Minimum Hardware Specifications

To ensure optimal performance, we recommend the following minimum hardware specifications:
- RAM: 16GB
- CPU: 4 cores / 4 threads
- Disk: 128GB

Please note that although the minimum storage requirement for the operating system can technically be lower, 
we highly recommend a minimum of 128GB for optimal performance.

#### SQL Server and Management

- [Microsoft SQL Server 2022](https://go.microsoft.com/fwlink/p/?linkid=2216019&clcid=0x409&culture=en-us&country=us)

- [Microsoft SQL Server Management Studio](https://aka.ms/ssmsfullsetup)

Verify that you have properly installed and configured Microsoft SQL Server before continuing.
You can also utilize newer installations of Microsoft SQL Server, provided that the version is equal to or greater than the required version for your file set.

:::caution
You will **need to enable** `SQL Server and Windows Authentication mode` and enable the `sa` account. You can do this by following these steps:

To enable SQL Server and Windows Authentication mode and activate the sa account, follow these steps:
- Open Server Properties.
- Select and enable SQL Server and Windows Authentication mode, then click OK.
- Restart the `SQL Server (SQLEXPRESS)` service. You can do this by: `Win + X > Run > services.msc`.

Next, configure the sa account:
- Navigate to Security > Logins.
- Right-click on sa and select Properties.
- Set a password for the sa account.
- Go to Status and ensure Login = Enabled, then click OK.

The default password for our `9Data/ServerInfo/ServerInfo.txt` configuration is `V63WsdafLJT9NDAn`. If your setup uses a different password, you will need to update it accordingly. This information can be found within the ServerInfo.txt document itself in the comments.
:::

## Installation

There are two options for setting up your server: [script](#script-setup) or [manual](#manual-setup). The script method involves using our PowerShell scripts, which will speed up the installation process. Manual setup is intended for more experienced users.

#### YouTube - [NA2016](#set-selection) - Windows Server 2025 VM Setup Setup Example

Here’s a brief example of how I configured a [NA2016](#set-selection) file set using the default installation options for SQL and other settings using our guide below this video. This video is using the [script](#script-setup) installation method. This guide has been updated since the video was published, but the information remains the same.

[![Thumbnail](http://img.youtube.com/vi/mup7r9PRG0c/0.jpg)](https://www.youtube.com/watch?v=mup7r9PRG0c "FH: NA2016 - Quick Windows Server 2025 VM Setup")

### Script Setup

This task should be relatively straightforward if you have correctly set up Microsoft SQL Server. We will be utilizing our PowerShell scripts. Before proceeding, read the following instructions carefully:

- Ensure that you have properly installed and configured Microsoft SQL Server. The scripts utilize windows authentication mode and the default server instance name is `SYSTEM/SQLEXPRESS`. This name should be automatically selected by default during SQL Server installation. **If you altered the instance name during the installation process, you will need to make the appropriate changes to said scripts**.

- Ensure that you are in the server directory of your files before proceeding.

- **Make sure you have administrator privileges**. These scripts will attempt to elevate to administrator access automatically.

:::tip
If you encounter the error message "cannot be loaded because running scripts is disabled on this system." you can run the command below in PowerShell with administrative privileges.

```bash
Set-ExecutionPolicy Unrestricted -Force
```
:::

:::caution
Our script ```_Install Databases.ps1``` **will only restore databases to the `C:/` drive by default**. Therefore, if your installation path is not ```C:\Program Files\Microsoft SQL Server```, you will need to [manually](#manual-setup) restore the databases.

It is **strongly advised** that you use the specific SQL Server version listed in the [prerequisites](#prerequisites) section.
:::

:::danger
We **strongly** recommend that you keep the database names the original when restoring. There are specific [procedure](https://www.w3schools.com/sql/sql_stored_procedures.asp) edits that rely on these names, and changing them **will break** the functionality.
:::

#### Script Paths and Descriptions

- `_Create Firewall Rule.ps1` - This will forward the required TCP ports for your server.
- `_Install Databases.ps1` - This action will automatically install all of your databases. You will receive a notification when the process is complete.
- `_Install Services.ps1` - This will automatically install all of your services. You will receive a prompt for each service as it is installed.

If you encounter any problems, ensure that your Microsoft SQL Server is properly installed and configured as previously described. If you continue to experience issues, please contact us on our [Discord](https://discord.com/invite/TCFzBPgtPX) server.

### Manual Setup

Open Microsoft SQL Server Management Studio. Once connected, right-click on "Databases" and select "Restore Databases".

Select "Device:" and navigate to the backup directory for your server's databases.
```
/Databases/
```

Restore each one individually until all of the following have been successfully restored:

```
Account
AccountLog
OperatorTool
StatisticsData
World00_Character
World00_GameLog
Options
```

:::danger
We **strongly** recommend that you keep the database names the original when restoring. There are specific [procedure](https://www.w3schools.com/sql/sql_stored_procedures.asp) edits that rely on these names, and changing them **will break** the functionality.
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

The document will have detailed comments throughout and should be clear and easy to understand.

Be sure to take your time and follow the instructions carefully. Additionally, **ensure that the IP Addresses are kept within the quotation marks**.

:::caution
If the line ends with ";LOCALHOST", do not change it to another IP address as indicated in the document.
:::

:::tip
If you're running on a home network, and want a public server, make sure to extract the ```LAN_ServerInfo.zip``` over the default files. As Fiesta sends the IP addresses it reads from ServerInfo to the client, it would send the LAN IP address to remote networks as well. Using this custom setup, you will have the relevant public IP addresses be sent to the client, while being able to listen on your LAN interface.
:::

## Client Setup

Assuming that you have downloaded the game client from the link in your set's repository (found in the downloads section), and followed the instructions, the following steps must be completed.

Depending on the configuration of your server (public or localhost), the "Game.bat" file must be edited:

<Tabs>
  <TabItem value="local" label="Localhost" default>
  
If this server is configured as localhost, editing the file is not necessary. Simply run the file and the game will launch.

  </TabItem>
  <TabItem value="global" label="LAN / Public">

The following parameters must be edited: 
- ```-i``` : The IP of the server you're connecting to.
- ```-p``` : The login port of the server you are connecting to. By default, we use 9010 for all our sets.


  </TabItem>

</Tabs>


After configuring this batch file successfully, run it. The game will launch. If you have followed all the instructions correctly, you should be able to log in and start playing.

#### How to use:

All of our sets include automatic account creation. When creating your account, you will need to use the ```r_``` parameter. For example, if you want to create the account `admin/admin` (username and password), you will need to enter `r_admin/admin`.

Simply do this on the login screen, and the account will be added to the database: Account > Tables > tUser.

Additionally, by changing your account's ```nAuthID``` from ***1*** to ***9***, every character you create will be granted level 100 admin power automatically.

#### Live Server Recommendation:

We suggest reviewing our [options](database#options-database) for database configuration and documentation. You can disable automatic account creation and adjust other settings to better suit your public or private server.