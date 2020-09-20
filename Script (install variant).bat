@echo off &title Script
CLS
echo Welcome to the script. This script is applying to Windows 7 , 8, 8.1 and 10 (1507 or newer).
echo Press 0 to exit.
echo Press 1 for to start the Script Configuration.
echo Press 2 for the installation of Microsoft Edge Chromium Broswer.
echo Press 3 for the installation of Google Chome Broswer.
CHOICE /C 123 /M "Enter your choice:" 
IF ERRORLEVEL 3 GOTO script3
IF ERRORLEVEL 2 GOTO script2
IF ERRORLEVEL 1 GOTO script1

:script1
echo Installing drivers. Please wait.
IF %PROCESSOR_ARCHITECTURE% == x86 (IF NOT DEFINED PROCESSOR_ARCHITEW6432 goto bit32)
goto bit64
:bit32
echo 32-bit
set xOS="R"
SDI_R2000.exe
goto cont
:bit64
echo 64-bit
set xOS="x64_R"
SDI_x64_R2000.exe
goto cont

:cont
echo After installing these drivers. Do NOT reboot. The script will continue.
pause
"Script (Upgrade Only).bat"
"script0.bat"
exit

:script2
echo Script - Installing Microsoft Edge Broswer.
MicrosoftEdge.msi 
pause
echo For Addons:
start https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm
start https://addoncrop.com/en/
exit

:script3
echo Script - Installing Google Chrome Broswer
GoogleChrome.msi
pause
echo For Addons:
start https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm
start https://addoncrop.com/en/
exit
