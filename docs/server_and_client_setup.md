---
sidebar_position: 1
---

# Server and Client Setup

## Server

Before proceeding, ensure that your server has met the following prerequisites:
```bash
# Supported Operating Systems
Windows Server: 2016, 2019 and 2022
Windows: 10 and 11.

# Minimum Hardware Requirements
RAM: 16GB
CPU: 4c/2t
DISK: This can technically be the minimum amount required by the operating system. However, we recommend at least 128GB.
```
Verify that you have properly installed and configured Microsoft SQL Server before continuing. You can obtain the installation files directly from the following links:
*	[Microsoft SQL Server 2019](https://go.microsoft.com/fwlink/p/?linkid=866658)
*	[Microsoft SQL Server Management Studio](https://aka.ms/ssmsfullsetup)

:::caution
When installing Microsoft SQL Server, ensure that you have activated mixed mode. This is essential for setting up your server's configuration file later on.
:::

:::note
You can also use newer versions of Microsoft SQL Server, as long as they are equal to or greater than 2019.
:::

Proceed to download your preferred set from our [GitHub](https://github.com/FiestaHeroes/). We currently offer support for the following sets:

* [NA2016](https://github.com/FiestaHeroes/NA2016/) - Fiesta Online (Gamigo)
* [CN2012](https://github.com/FiestaHeroes/CN2012/) - 光之萌约 (Moe Promise)
* [TW2008](https://github.com/FiestaHeroes/TW2008/) - 聖光2 (Holy Light 2)

There are two options for setting up your server: script or manual. The script method involves using our PowerShell scripts, which will speed up the installation process. Manual setup is intended for more experienced users.

### Script Setup


This task should be relatively straightforward if you have correctly set up Microsoft SQL Server. We will be utilizing our PowerShell scripts. Ensure that you are in the server directory of your files before proceeding.

:::info
Our scripts utilize windows authentication mode. Additionally, the default instance name /SQLEXPRESS is used. If you altered the instance name during the installation process, you will need to make the appropriate changes to all the scripts.
:::

:::caution
It is important to note that administrative privileges are required to run our PowerShell scripts.
:::

:::tip
If you encounter the error message "cannot be loaded because running scripts is disabled on this system." you can run the command below in PowerShell with administrative privileges.

```bash
Set-ExecutionPolicy Unrestricted -Force
```
:::

:::tip
For the GamigoZR install.bat, modify it to match your file system layout. The path inside the .bat file should be clear and easy to understand. Make sure you run this .bat file as an administrator by right-clicking on the file and selecting "Run as administrator".
:::

#### Script Path and Descriptions

```bash
# File path and name.
/Server/_Create Firewall Rule.ps1

# Description
This will forward the required ports for your server.
```
```bash
# File path and name.
/Server/_Install Databases.ps1

# Description
This action will automatically install all of your databases. You will receive a notification when the process is complete.
```
```bash
# File path and name.
/Server/_Install Services.ps1

# Description
This will automatically install all of your services. You will receive a prompt for each service as it is installed.
```
:::danger
Our script "_Install Databases.ps1" **will only restore databases to the C:/ drive by default**. Therefore, if your installation path is not "C:\Program Files\Microsoft SQL Server", you will need to manually restore the databases. You can find the instructions for doing so in the manual setup process mentioned below.
:::
:::caution
If you encounter any problems, ensure that your Microsoft SQL Server is properly installed and configured as previously described.
:::

### Manual Setup

Open Microsoft SQL Server Management Studio. Once connected, right-click on "Databases" and select "Restore Databases".

Select "Device:" and navigate to the backup directory for your server's databases.
```bash
/Server/Databases/
```

Restore each one individually until all of the following have been successfully restored:
```bash
Account
AccountLog
OperatorTool
StatisticsData
World00_Character
World00_GameLog
```

Additionally, you will need to install the following services based on your chosen set:
```bash
# NA2016
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

# CN2012
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

# TW2008
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

:::tip
For the GamigoZR install.bat, modify it to match your file system layout. The path inside the .bat file should be clear and easy to understand. Make sure you run this .bat file as an administrator by right-clicking on the file and selecting "Run as administrator".
:::

:::caution
Ensure that you run all of these files as an administrator by right-clicking on the file and selecting "Run as administrator".
:::

### Configuration

Locate the following configuration file based on your chosen set:
```bash
NA2016:
/Server/9Data/ServerInfo/ServerInfo.txt

CN2012:
/Server/9Data/_ServerInfo.txt

TW2008:
/Server/9Data/_ServerInfo.txt
```
The document will have detailed comments throughout and should be clear and easy to understand.

Be sure to take your time and follow the instructions carefully. Additionally, ensure that the IP Addresses are kept within the quotation marks.

:::tip
If the line ends with "LOCALHOST", do not change it to another IP address as indicated in the document.
:::

Finally, set up the "ODBC_INFO" sections.

:::caution
If you forgot to activate mixed mode during installation, as previously stated, the link below provides instructions on how to enable it.

- [Enable Mixed Mode Authentication for SQL Server](https://trbonet.com/kb/enable-mixed-mode-authentication-for-sql-server/)
:::

:::caution
If you are using the NA2016 file set, ensure that you run and apply the following files:

```bash
/Server/Fantasy.reg
/Server/GBO.reg
```
**If this step is not performed, the zone services will fail to start.**
:::

## Client

Assuming that you have downloaded the game client from the link in your set's repository (found in the downloads section), and followed the instructions, the following steps must be completed.

Depending on the configuration of your server (public or localhost), the "Game.bat" file must be edited.

:::note
If this server is configured as localhost, editing the file is not necessary.
:::

```bash
# Batch file configuration

# File name
Fiesta.bin

# -i parameter
The IP of the server you're connecting to.

# -p parameter
The login port of the server you are connecting to. By default, we use 9010 for all our sets.
```

After configuring this batch file successfully, run it. The game will launch. If you have followed all the instructions correctly, you should be able to log in and start playing.

:::tip
All of our sets include automatic account creation. All you need to do is enter the desired credentials and the account will be added to the database: Account > Tables > tUser.
:::