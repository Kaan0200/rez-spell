
#========================
#  Chocolatey Install
#========================

#Run as Admin Command
Start-Process powershell -Verb runAs;
#Set script policy
Set-ExecutionPolicy AllSigned;
#Access and download script which does install
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

#=============================================
#  Install Windows Subsystem for Linux (WSL)
#=============================================

#enable wsl feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
#enable vm feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

#=================
#  Core Programs
#=================

#Powershell Core 7+
choco install powershell-core -Y
#git & poshgit
choco install git -Y 
choco install poshgit -Y

#=============
#  Utilities
#=============

#7-Zip
choco install 7zip -Y
#Notepad++
choco install notepadplusplus -Y

#Windows Power Toys
choco install powertoys -Y
#Greenshot
choco install greenshot -Y

#GPG Key Generator
choco install gnupg -Y

#============
#  Programs
#============

#Discord
choco install discord -Y
#Visual Studio Code
choco install vscode -Y
#mp3tag
choco install mp3tag -Y
