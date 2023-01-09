---
sidebar_position: 1
---

# Server and Client Setup

## Server

Before you begin, make sure your server meets the following requirements:
```bash
# Supported Operating Systems
Windows Server: 2016, 2019 and 2022
Windows: 10 and 11.

# Hardware Specifications (Minimum Requirements)
RAM: 16GB
CPU: 4c/2t
DISK: This can technically be the minimum amount the OS requires. But, we at least recommend 128GB.
```
Next, make sure you have Microsoft SQL Server properly installed and configured before continuing. You can directly download the installations from the following links:
*	[Microsoft SQL Server 2019](https://go.microsoft.com/fwlink/p/?linkid=866658)
*	[Microsoft SQL Server Management Studio](https://aka.ms/ssmsfullsetup)

:::caution
When installing Microsoft SQL Server, please make sure you have **enabled mix mode.** This will be needed when setting up your servers configuration file later.
:::

:::note
You can use newer Microsoft SQL server installations as well. But, it must be equal or greater than 2019.
:::

Now, download your desired set from our [GitHub](https://github.com/FiestaHeroes/). We currently support the following sets:

* [NA2016](https://github.com/FiestaHeroes/NA2016/) - Fiesta Online (Gamigo)
* [CN2012](https://github.com/FiestaHeroes/CN2012/) - 光之萌约 (Love Of Light)
* [TW2008](https://github.com/FiestaHeroes/TW2008/) - 聖光2 (Holy Light 2)

We have two methods of setting up your server. Script or manual. The script method will be utilizing our PowerShell scripts, which will make the installation process a lot faster. Manual is for the more experienced users.

### Script Setup

This part should be reasonably easy, if you have Microsoft SQL Server correctly setup. We will be utilizing our PowerShell scripts. Make sure you're in the server directory of your files.

:::info
We use windows authentication mode for our scripts. Also, **we use the default instance name, /SQLEXPRESS**. If you changed yours during the installation process, you will need to adjust all the scripts accordingly.
:::

:::caution
Our PowerShell scripts **require administrative privileges**.
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
This will automatically install all your databases. You will be prompted when finished.
```
```bash
# File path and name.
/Server/_Install Services.ps1

# Description
This will automatically install all your services. You will be prompted when each service is installed.
```
:::caution
If you have any issues, please make sure your Microsoft SQL Server is properly installed and configured the way mentioned previously.
:::

### Manual Setup

Open Microsoft SQL Server Management Studio. After you have successfully connected, right-click on "Databases" and select "Restore Databases".

Select "Device:" and navigate to your servers database backup directory.
```bash
/Server/Databases/
```

Restore each one individually, until you have successfully restored the following:
```bash
Account
AccountLog
OperatorTool
StatisticsData
World00_Character
World00_GameLog
```

Next, you will need to install the following services depending on your set:
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
For the GamigoZR install.bat, edit and change it to match your filesystem layout. The current path inside the .bat should be self-explanatory. 
:::

:::caution
Make sure you run all of these files as an **administrator**. Right-click on the file, and select "Run as administrator".
:::

### Configuration

Navigate to the following configuration file based on your set:
```bash
NA2016:
/Server/9Data/ServerInfo/ServerInfo.txt

CN2012:
/Server/9Data/_ServerInfo.txt

TW2008:
/Server/9Data/_ServerInfo.txt
```
The document will have detailed comments inside, and should be self-explanatory.

Just make sure you take your time and follow the directions. Also, make sure to keep the IP Addresses within the quotations.

:::tip
If it says "LOCALHOST" at the end of the line, do not change it to another IP. Like the document says.
:::

Lastly, configure the "ODBC_INFO" sections.

:::caution
If you forgot to enable mix mode during the installation like previously mentioned, below is a link on how-to enable it.

- [Enable Mixed Mode Authentication for SQL Server](https://trbonet.com/kb/enable-mixed-mode-authentication-for-sql-server/)
:::

:::caution
If you're using the NA2016 file set, please make sure you execute and apply the following files:

```bash
/Server/Fantasy.reg
/Server/GBO.reg
```
**If you forget to do this step, the zone services will not start.**
:::

## Client

Assuming you have downloaded the game client from the link in your sets repository (under the downloads section), and followed the directions, this is what you'll need to-do.

Depending on how your server is configured (public or localhost), you will need to edit the "Game.bat".

:::note
If this server is localhost, no need to edit this file.
:::

```bash
# Batch file configuration

# File name
Fiesta.bin

# -i parameter
The IP of the server you're connecting to.

# -p parameter
The login port of the server you're connecting to. By default we use 9010 for all of our sets.
```

After you have successfully configured this batch file, execute it. The game will open. If you have followed everything correctly, you should be able to login and begin.

:::tip
All of our sets include automatic account creation. All you will have to-do is enter the credentials you want, and the account will be inserted into the database: Account > Tables > tUser.
:::