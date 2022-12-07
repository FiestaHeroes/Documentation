---
sidebar_position: 1
---

# Server Setup

# Requirements:

First, download your desired server file set from our [GitHub](https://github.com/FiestaHeroes/). We currently supporting the following sets:
* [NA2016](https://github.com/FiestaHeroes/NA2016/) - Fiesta Online (Gamigo) files.
* [CN2012](https://github.com/FiestaHeroes/CN2012/) - 光之萌约 (Love Of Light). Most commonly referred to as "CN" or "Hunter Kingdom" files.
* [TW2008](https://github.com/FiestaHeroes/TW2008/) - 聖光2 (Holy Light 2). Most commonly referred to as "Athens" files.

Make sure your server (local or public) supports the following requirements.
```bash
# Operating System
Windows Server: 2016, 2019 and 2022
Windows: 10 and 11.

# Server Specifications (Minimum Requirements)
RAM: 16GB
CPU: 4c/2t
DISK: 80GB
```

> **Note:**
> You can use newer Microsoft SQL server installations as well. But, it **must** be equal or greater than 2019.

Make sure you have Microsoft SQL Server properly installed and configured before continuing. You can directly download the installations from the following links:
*	[Microsoft SQL Server 2019](https://go.microsoft.com/fwlink/p/?linkid=866658)
*	[Microsoft SQL Server Management Studio](https://aka.ms/ssmsfullsetup)

> **Note:**
> When installing your Microsoft SQL Server, **make sure you have enabled mix mode.** This is needed when setting up your ServerInfo.txt config. Keep track of your username (**sa** by default) and your password.

# Server Installation:
This part should be reasonably easy, if you have Microsoft SQL Server correctly setup. We will be utilizing our PowerShell scripts. Make sure you're in the **/Server/** directory.
1. Run "_Create Firewall Rule.ps1".
> This will forward the required ports for your server.

2. Run "_Install Databases.ps1".
> This will automatically install your databases. You will be prompted when finished.

3. Lastly, run "_Install Services.ps1".
> This will automatically install your services. You will be prompted when each service is installed.

Our PowerShell scripts **require administrative privileges**. If you have any issues with the scripts, please make sure you have correctly setup Microsoft SQL Server.
> **Note:**
> Our PowerShell scripts use the default ServerInstance name: ./SQLEXPRESS. If yours is different, change the script accordingly.

# Server Configuration:

Navigate to the following file based on your set:
```bash
NA2016:
/Server/9Data/ServerInfo/ServerInfo.txt

CN2012:
/Server/9Data/_ServerInfo.txt

TW2008:
/Server/9Data/_ServerInfo.txt
```
The document will have detailed comments, and should be self-explanatory. Only edit the IP Addresses with the "PUBLIC_IP" comment at the end. If it says "LOCALHOST", leave it localhost. Keep the IP Addresses within the quotations.

Lastly, configure the "ODBC_INFO" sections. The document has detailed comments, and should be self-explanatory.
> **Note:**
> If you forgot to enable mix mode, below is a link on how-to enable it.

[Enable Mixed Mode Authentication for SQL Server](https://trbonet.com/kb/enable-mixed-mode-authentication-for-sql-server/)