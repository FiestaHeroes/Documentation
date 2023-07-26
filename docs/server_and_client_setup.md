---
title : Setup
sidebar_position: 1
---

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

# Setup

Our setup is intended to be as straightforward as possible. We currently offer support for the following sets:

- [NA2016](https://github.com/FiestaHeroes/NA2016/)
- [CN2012](https://github.com/FiestaHeroes/CN2012/)
- [TW2008](https://github.com/FiestaHeroes/TW2008/)

The default setup is intended for development purposes. For tips on how to set up your server for production, please refer to the [How to Use](#how-to-use) section.

## Server

Before proceeding, ensure that your server has met the following prerequisites:

<Tabs groupId="fileset">
  <TabItem value="na/cn" label="2016 / CN" default>

#### Supported Operating Systems
- Windows Server: 2016, 2019, 2022
- Windows: 10, 11

#### Minimum Hardware Specifications
To ensure optimal performance, we recommend the following minimum hardware specifications:
- RAM: 16GB
- CPU: 4 cores / 4 threads
- Disk: 128GB


  </TabItem>
  <TabItem value="TW" label="TW">

#### Supported Operating Systems
- Windows Server: 2008 R2
- Windows: Vista SP2, 7 SP1

#### Minimum Hardware Specifications
To ensure optimal performance, we recommend the following minimum hardware specifications:
- RAM: 8GB
- CPU: 4 cores / 4 threads
- Disk: 128GB


  </TabItem>
</Tabs>

Please note that although the minimum storage requirement for the operating system can technically be lower, 
we highly recommend a minimum of 128GB for optimal performance.

:::caution
When installing Microsoft SQL Server, ensure that you have activated mixed mode. This is essential for setting up your server's configuration file later on.
:::

Verify that you have properly installed and configured Microsoft SQL Server before continuing.
You can also utilize newer installations of Microsoft SQL Server, provided that the version is equal to or greater than the required version for your file set.
You can obtain the installation files directly from the following links:


<Tabs groupId="fileset">
  <TabItem value="na/cn" label="2016 / CN" default>

- [Microsoft SQL Server 2019](https://go.microsoft.com/fwlink/p/?linkid=866658)

- [Microsoft SQL Server Management Studio](https://aka.ms/ssmsfullsetup)


  </TabItem>
  <TabItem value="TW" label="TW">

- [Microsoft SQL Server 2014](https://www.microsoft.com/en-us/download/details.aspx?id=42299)

:::note
If you intend to use a version higher than 2014 for TW2008, you will need to host the databases on a separate machine. In such cases, it is important to ensure that you appropriately configure the ```_ServerInfo.txt``` file to establish the required connection to the databases located on the separate machine.
:::

  </TabItem>
</Tabs>


Proceed to download your preferred set from our [GitHub](https://github.com/FiestaHeroes/). We currently offer support for the following sets:

* [NA2016](https://github.com/FiestaHeroes/NA2016/) - Fiesta Online (Gamigo)
* [CN2012](https://github.com/FiestaHeroes/CN2012/) - 光之萌约 (Moe Promise)
* [TW2008](https://github.com/FiestaHeroes/TW2008/) - 聖光2 (Holy Light 2)

There are two options for setting up your server: script or manual. The script method involves using our PowerShell scripts, which will speed up the installation process. Manual setup is intended for more experienced users.

### Script Setup


This task should be relatively straightforward if you have correctly set up Microsoft SQL Server. We will be utilizing our PowerShell scripts. Before proceeding, read the following instructions carefully:

- Ensure that you have properly installed and configured Microsoft SQL Server. The scripts utilize windows authentication mode and the default instance name is  `/SQLEXPRESS`. If you altered the instance name during the installation process, you will need to make the appropriate changes to said scripts.

- Ensure that you are in the server directory of your files before proceeding.

- Ensure that you start the scripts as an administrator.

:::caution
If you're using Windows Server 2008R2 for the TW2008 file set, you will need to update your PowerShell installation before you can execute these scripts.

Download [Win7AndW2K8R2-KB3191566-x64.zip](https://www.microsoft.com/en-us/download/details.aspx?id=54616).
:::

:::warning
If you encounter the error message "cannot be loaded because running scripts is disabled on this system." you can run the command below in PowerShell with administrative privileges.

```bash
Set-ExecutionPolicy Unrestricted -Force
```
:::

:::danger
Our script ```_Install Databases.ps1``` **will only restore databases to the C:/ drive by default**. Therefore, if your installation path is not ```C:\Program Files\Microsoft SQL Server```, you will need to manually restore the databases. You can find the instructions for doing so in the manual setup process mentioned below.
:::

:::danger
We strongly recommend that you keep the databases' original names when restoring them. There are specific [procedure](https://www.w3schools.com/sql/sql_stored_procedures.asp) edits that rely on these names, and changing them will break the functionality.
:::

#### Script Path and Descriptions

- `/Server/_Create Firewall Rule.ps1` - This will forward the required ports for your server.
- `/Server/_Install Databases.ps1` - This action will automatically install all of your databases. You will receive a notification when the process is complete.
- `/Server/_Install Services.ps1` - This will automatically install all of your services. You will receive a prompt for each service as it is installed.

If you encounter any problems, ensure that your Microsoft SQL Server is properly installed and configured as previously described. If you continue to experience issues, please contact us on our [Discord](https://discord.com/invite/TCFzBPgtPX) server.

### Manual Setup

Open Microsoft SQL Server Management Studio. Once connected, right-click on "Databases" and select "Restore Databases".

Select "Device:" and navigate to the backup directory for your server's databases.
```
/Server/Databases/
```

Restore each one individually until all of the following have been successfully restored:

:::danger
We strongly recommend that you keep the databases' original names when restoring them. There are specific [procedure](https://www.w3schools.com/sql/sql_stored_procedures.asp) edits that rely on these names, and changing them will break the functionality.
:::

```
Account
AccountLog
OperatorTool
StatisticsData
World00_Character
World00_GameLog
```

:::caution
Ensure that you run all of these files as an administrator by right-clicking on the file and selecting "Run as administrator".
:::

Additionally, you will need to install the following services based on your chosen set:

:::tip
For the GamigoZR ```install.bat```, modify it to match your file system layout. It should be as close to the default layout as possible.
:::

<Tabs groupId="fileset-full">
  <TabItem value="na" label="2016" default>

```
/Server/Account/Account.exe
/Server/AccountLog/AccountLog.exe
/Server/Character/Character.exe
/Server/GameLog/GameLog.exe
/Server/GamigoZR/install.bat
/Server/Login/Login.exe
/Server/WorldManager/WorldManager.exe
/Zone00/Zone.exe
/Zone01/Zone.exe
/Zone02/Zone.exe
/Zone03/Zone.exe
/Zone04/Zone.exe
```

  </TabItem>
  <TabItem value="cn" label="CN">

```
/Server/Account/Account.exe
/Server/AccountLog/AccountLog.exe
/Server/Character/Character.exe
/Server/GameLog/GameLog.exe
/Server/Login/Login.exe
/Server/WorldManager/WorldManager.exe
/Zone00/Zone.exe
/Zone01/Zone.exe
/Zone02/Zone.exe
/Zone03/Zone.exe
```

  </TabItem>
  <TabItem value="tw" label="TW">

```
/Server/Account/Account.exe
/Server/AccountLog/AccountLog.exe
/Server/Character/Character.exe
/Server/GameLog/GameLog.exe
/Server/Login/Login.exe
/Server/WorldManager/WorldManager.exe
/Zone00/Zone.exe
/Zone01/Zone.exe
/Zone02/Zone.exe
```

  </TabItem>
</Tabs>

### Configuration

Locate the following configuration file based on your chosen set:

<Tabs groupId="fileset-full">
  <TabItem value="na" label="2016" default>

```
/Server/9Data/ServerInfo/ServerInfo.txt
```

  </TabItem>
  <TabItem value="cn" label="CN">

```
/Server/9Data/_ServerInfo.txt
```
  </TabItem>
  <TabItem value="tw" label="TW">  

```
/Server/9Data/_ServerInfo.txt
```

  </TabItem>
</Tabs>

The document will have detailed comments throughout and should be clear and easy to understand.

Be sure to take your time and follow the instructions carefully. Additionally, ensure that the IP Addresses are kept within the quotation marks.

:::danger
If the line ends with "LOCALHOST", do not change it to another IP address as indicated in the document.
:::

<Tabs groupId="fileset-full">
  <TabItem value="na" label="2016" default>

Ensure that you run and apply the following files:

```
/Server/Fantasy.reg
/Server/GBO.reg
```

**If this step is not performed, the zone services will fail to start.**


  </TabItem>
  <TabItem value="cn" label="CN">
  </TabItem>
  <TabItem value="tw" label="TW">  
  </TabItem>
</Tabs>

Finally, set up the "ODBC_INFO" sections.

:::tip
If you forgot to activate mixed mode during installation, as previously stated, the link below provides instructions on how to enable it.

- [Enable Mixed Mode Authentication for SQL Server](https://trbonet.com/kb/enable-mixed-mode-authentication-for-sql-server/)
:::

## Client

Assuming that you have downloaded the game client from the link in your set's repository (found in the downloads section), and followed the instructions, the following steps must be completed.

Depending on the configuration of your server (public or localhost), the "Game.bat" file must be edited:

<Tabs>
  <TabItem value="local" label="Local" default>
  
If this server is configured as localhost, editing the file is not necessary. Simply run the file and the game will launch.

  </TabItem>
  <TabItem value="global" label="Global">

The following parameters must be edited: 
- ```-i``` - The IP of the server you're connecting to.
- ```-p``` - The login port of the server you are connecting to. By default, we use 9010 for all our sets.


  </TabItem>

</Tabs>


After configuring this batch file successfully, run it. The game will launch. If you have followed all the instructions correctly, you should be able to log in and start playing.

## How to use

All of our sets include automatic account creation. When creating your account, you will need to use the ```r_``` parameter. For example, if you want to create the account `admin/admin` (username and password), you will need to enter `r_admin/admin`.

Simply do this on the login screen, and the account will be added to the database: Account > Tables > tUser.

Additionally, by changing your account's ```nAuthID``` from ***1*** to ***9***, every character you create will be granted level 100 admin power automatically.

### Live Server

We recommend that you don't use the account creation method described above for live servers. Instead, you should make a proper launcher with account creation or a website with account creation.