
echo Finding inforamtion..
IF %PROCESSOR_ARCHITECTURE% == x86 (IF NOT DEFINED PROCESSOR_ARCHITEW6432 goto bit32)
goto bit64
:bit32
echo Your Windows Operating System is 32-bit and you can use less than 4GB RAM and the script will install x86 Apps.
set xOS="R"
goto cont
:bit64
echo Your Windows Operating System is 64-bit and you can use more than 4GB RAM and the script will install x64 Apps.
set xOS="x64_R"
 echo.
echo To Start the Script 
pause
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
  echo Requesting administrative privileges...
  goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
echo off
echo.
pushd "%CD%"
CD /D "%~dp0"

sc del WpcMonSvc
sc delete KtmRm
sc delete vmickvpexchange
sc delete vmicguestinterface
sc delete vmicshutdown
sc delete vmicheartbeat
sc delete vmicvmsession
sc delete vmicrdv
sc delete vmictimesync
sc delete vmicvss
sc delete MSiSCSI
sc delete HvHost
sc delete pla
sc delete defragsvc
sc delete SmsRouter
sc delete MapsBroker
sc delete diagnosticshub.standardcollector.service
sc delete NaturalAuthentication
sc delete lltdsvc
sc delete TroubleshootingSvc
sc delete WerSvc
sc delete wcncsvc
sc delete WebClient
sc delete VacSvc
sc delete VSStandardCollectorService150
sc delete upnphost
sc delete SysMain
sc delete RetailDemo
sc delete PcaSvc
sc delete WpcMonSvc
sc delete fhsvc
sc delete FDResPub
sc delete fdPHost
sc delete RemoteRegistry
sc delete SysMain
sc delete SSDPSRV
sc delete SharedRealitySvc
sc delete SNMPTRAP
sc delete TroubleshootingSvc
sc delete QWAVE
sc delete wercplsupport
sc delete defragsvc
sc delete SmsRouter
sc delete MapsBroker
sc delete diagnosticshub.standardcollector.service
sc delete NaturalAuthentication
sc delete AdobeARMservice
sc delete AdobeFlashPlayerUpdateSvc
sc delete AMD Crash Defender Service
sc delete AxInstSV
sc delete ALG
sc delete AssignedAccessManagerSvc
sc delete tzautoupdate
sc delete autotimesvc
sc delete DiagTrack
sc delete WinRM
sc delete FontCache3.0.0.0
sc delete perceptionsimulation
sc delete spectrum
sc delete wisvc
sc delete WerSvc
sc delete wcncsvc
sc delete WebClient
sc delete VacSvc
sc delete VSStandardCollectorService150
sc delete upnphost
sc delete p2psvc
sc delete PNRPsvc
sc delete LanmanServer
sc delete LanmanWorkstation
sc delete lfsvc
sc delete PNRPAutoReg
sc delete PerfHost
sc delete p2pimsvc
sc delete MSDTC
sc delete TrkWks
sc delete HvHost
sc delete AppVClient
sc delete MsKeyboardFilter
sc delete SmsRouter
sc delete SEMgrSvc
sc delete TapiSrv
sc delete WSearch
sc config Power start= demand
sc config SensorService start= disabled
sc config SensorDataService start= disabled
sc config SensrSvc start= disabled
sc config SCardSvr start= disabled
sc config SCPolicySvc start= disabled
sc config ScDeviceEnum start= disabled
sc config TabletInputService start= disabled
sc config AudioEndpointBuilder start= demand
sc config EventLog start= demand
sc config FontCache start= demand
sc config BITS start= demand
sc config DusmSvc start= demand
sc config CryptSvc start= demand
sc config embeddedmode start= disabled
ViVeTool.exe addconfig 15003065 2
ViVeTool.exe addconfig 23282664 2
ViVeTool.exe addconfig 23447524 2
ViVeTool.exe addconfig 23454425 2
ViVeTool.exe addconfig 23615618 2
ViveTool.exe addconfig 19400537 2
ViveTool.exe addconfig 21207738 2
ViveTool.exe addconfig 6115766 2
ViveTool.exe addconfig 25576270 2
ViveTool.exe addconfig 25449285 2
ViveTool.exe addconfig 21253981 2
ViveTool.exe addconfig 25973782 2
ViveTool.exe addconfig 17826155 2
ViveTool.exe addconfig 22119314 2
ViveTool.exe addconfig 25416289 2
ViveTool.exe addconfig 23577149 2
ViveTool.exe addconfig 19123720 2
ViveTool.exe addconfig 23402385 2
ViveTool.exe addconfig 19775411 2
ViveTool.exe addconfig 18616153 2
ViveTool.exe addconfig 8533467 2
ViveTool.exe addconfig 5129928 1
ViveTool.exe addconfig 11015710 1
ViveTool.exe addconfig 11897843 1
ViveTool.exe addconfig 19040803 1
ViveTool.exe addconfig 18096054 1
ViveTool.exe addconfig 19051580 1
ViveTool.exe addconfig 19450352 1
ViveTool.exe addconfig 11030047 1
ViveTool.exe addconfig 11789752 1
ViveTool.exe addconfig 13126689 1
ViveTool.exe addconfig 11430513 1
ViveTool.exe addconfig 15488212 1
ViveTool.exe addconfig 11516923 1
ViveTool.exe addconfig 15520941 1
ViveTool.exe addconfig 17035810 1
ViveTool.exe addconfig 8933771 1
ViveTool.exe addconfig 14577032 1
ViveTool.exe addconfig 14549080 1
ViveTool.exe addconfig 10492335 1
install_wim_tweak.exe /o /c Microsoft-Windows-HVSI /r
echo &Title Script is uninstalling HyperV (0 percent)
install_wim_tweak.exe /o /c HyperV-Feature /r
install_wim_tweak.exe /o /c HyperV-Guest /r
install_wim_tweak.exe /o /c HyperV-Networking /r
install_wim_tweak.exe /o /c HyperV-UX /r
install_wim_tweak.exe /o /c HyperV-Compute /r
install_wim_tweak.exe /o /c HyperV-DynamicMemory /r
install_wim_tweak.exe /o /c HyperV-Hypervisor /r
install_wim_tweak.exe /o /c HyperV-Isolated /r
install_wim_tweak.exe /o /c HyperV-KernelInt /r
install_wim_tweak.exe /o /c HyperV-Primitive /r
install_wim_tweak.exe /o /c HyperV-RDP4VS /r
install_wim_tweak.exe /o /c HyperV-Worker /r
install_wim_tweak.exe /o /c HyperV-Vm /r
install_wim_tweak.exe /o /c HyperV-Vpci /r
install_wim_tweak.exe /o /c Microsoft-Hyper-V /r
install_wim_tweak.exe /o /c Microsoft-Windows-ApiSetSchemaExtension-HyperV /r
install_wim_tweak.exe /o /c Microsoft-Windows-HyperV /r
echo &Title Script is configuring Windows Defender (5 percent)
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v SmartScreenEnabled /t REG_SZ /d "Off" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DontReportInfectionInformation /t REG_DWORD /d 1 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d 1 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run" /v "SecurityHealth" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SecHealthUI.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
install_wim_tweak /o /c Windows-Defender /r
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings\Windows.SystemToast.SecurityAndMaintenance" /v "Enabled" /t REG_DWORD /d 0 /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /f
echo &Title Script is configuring Microsoft Edge 
taskkill /F /IM browser_broker.exe
taskkill /F /IM RuntimeBroker.exe
taskkill /F /IM MicrosoftEdge.exe
taskkill /F /IM MicrosoftEdgeCP.exe
taskkill /F /IM MicrosoftEdgeSH.exe
mv C:\Windows\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe C:\Windows\SystemApps\Microsoft.MicrosoftEdge_8wekyb3d8bbwe_BAK
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MicrosoftEdge.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
install_wim_tweak.exe /o /c Microsoft-Windows-Internet-Browser /r
install_wim_tweak.exe /o /c Microsoft-Windows-MicrosoftEdgeDevToolsClient /r
echo &Title Script is configuring Help Functions (7 percent) 
install_wim_tweak /o /c Microsoft-Windows-ContactSupport /r
install_wim_tweak.exe /o /c Microsoft-Windows-Help /r
echo &Title Script is configuring Language and Accesibility Functions
install_wim_tweak.exe /o /c LanguageFeatures-WordBreaking /r
install_wim_tweak.exe /o /c Microsoft-Windows-LanguageFeatures-TextToSpeech /r
install_wim_tweak.exe /o /c Microsoft-Windows-Accessibility /r
install_wim_tweak.exe /o /c Microsoft-OneCore-Accessibility /r
install_wim_tweak.exe /o /c Microsoft-Windows-TextPrediction /r
echo &Title Script is configuring OneCore Components (9 percent)
install_wim_tweak.exe /o /c Microsoft-OneCore-RemoteDesktopServices /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-Hid-Telephony-Package /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-SpeechComponents-Package /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-Telephony /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-Biometrics /n /r 
install_wim_tweak.exe /o /c Microsoft-OneCore-Maps /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-InkPlatform /r
install_wim_tweak.exe /o /c Microsoft-Windows-Speech-Package /n /r 
install_wim_tweak.exe /o /c Microsoft-Windows-Spelling /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-IME /r
install_wim_tweak.exe /o /c Microsoft-Windows-IME /r
echo &Title Script is configuring Tablet PC Components (11 percent)
install_wim_tweak.exe /o /c Microsoft-Windows-Biometrics /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-PenService-Package /n /r
install_wim_tweak.exe /o /c Microsoft-OneCore-Sensors /n /r
install_wim_tweak.exe /o /c Microsoft-Mobile-Sensors /n /r 
install_wim_tweak.exe /o /c Microsoft-Windows-TabletPC /r
install_wim_tweak.exe /o /c Sensors /r
echo &Title Uninstall Windows-Integrated Tools (15 percent)
install_wim_tweak.exe /o /c Microsoft-Windows-CleanMgr /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-CBS-Package /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-ReadyBoost /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-OfflineFiles /r
install_wim_tweak.exe /o /c Microsoft-Windows-SecureStartup /r
install_wim_tweak.exe /o /c Microsoft-Windows-TPM /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Defrag /r
install_wim_tweak.exe /o /c Microsoft-Windows-DirectoryServices /r
install_wim_tweak.exe /o /c Microsoft-Windows-IIS /r
install_wim_tweak.exe /o /c Microsoft-Windows-MemoryDiag /r
install_wim_tweak.exe /o /c Microsoft-Windows-WorkplaceJoin /r
install_wim_tweak.exe /o /c Microsoft-Windows-StorageSpaces /r
install_wim_tweak.exe /o /c Microsoft-Windows-Troubleshooting /r
install_wim_tweak.exe /o /c Microsoft-Windows-TroubleShooting /r
install_wim_tweak.exe /o /c Microsoft-Windows-PerfMon /r
install_wim_tweak.exe /o /c Microsoft-Windows-OneDrive /r
echo &Title Script is configuring UNIX or Linux Bash (21 percent)
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Package /n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Package/n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Shared-merged-Package /n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Shared-merged-Package/n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Shared-Package /n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Shared-Package/n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Shared-WOW64-Package /n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-Shared-WOW64-Package/n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-WOW64-Package /n /r
install_wim_tweak.exe /o /c Containers-ApplicationGuard-WOW64-Package/n /r
install_wim_tweak.exe /o /c Containers-Client-Guest-Package /n /r
install_wim_tweak.exe /o /c Containers-Client-Guest-Package/n /r
install_wim_tweak.exe /o /c Containers-Client-Manager-merged-Package /n /r
install_wim_tweak.exe /o /c Containers-Client-Manager-merged-Package/n /r
install_wim_tweak.exe /o /c Containers-Client-Manager-Package /n /r
install_wim_tweak.exe /o /c Containers-Client-Manager-Package/n /r
install_wim_tweak.exe /o /c Containers-Client-Shared-Package /n /r
install_wim_tweak.exe /o /c Containers-Client-Shared-Package/n /r
install_wim_tweak.exe /o /c Containers-DisposableClientVM-merged-Package /n /r
install_wim_tweak.exe /o /c Containers-DisposableClientVM-merged-Package/n /r
install_wim_tweak.exe /o /c Containers-DisposableClientVM-Package /n /r
install_wim_tweak.exe /o /c Containers-DisposableClientVM-Package/n /r
install_wim_tweak.exe /o /c Containers-Dynamic-Image-Package/n /r
install_wim_tweak.exe /o /c Containers-OptionalFeature-DisposableClientVM-Package /n /r
install_wim_tweak.exe /o /c Containers-OptionalFeature-DisposableClientVM-Package/n /r
install_wim_tweak.exe /o /c Containers-Server-merged-Package /n /r
install_wim_tweak.exe /o /c Containers-Server-merged-Package/n /r
install_wim_tweak.exe /o /c Containers-Server-Package /n /r
install_wim_tweak.exe /o /c Containers-Server-Package/n /r
install_wim_tweak.exe /o /c Containers-Server-SDN-Package /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Lxss /r
echo &Title Uninstall RemoteDesktop Components (27 percent)
install_wim_tweak.exe /o /c Microsoft-Windows-RemoteAssistance /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-RemoteDesktop /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Remotefx /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Network-QoS /r
install_wim_tweak.exe /o /c RemoteDesktopServices /r
install_wim_tweak.exe /o /c Microsoft-Windows-MSMQ /r
install_wim_tweak.exe /o /c Microsoft-Windows-msmq /r
echo Uninstall Microsoft Protocoles (30 percent)
install_wim_tweak.exe /o /c Microsoft-Windows-PeerDist-Client /r
install_wim_tweak.exe /o /c Microsoft-Windows-SnippingTool /r
install_wim_tweak.exe /o /c Microsoft-Windows-RemoteFX /r
install_wim_tweak.exe /o /c Microsoft-Windows-Shell-HomeGroup /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-PeerToPeer /r
install_wim_tweak.exe /o /c Microsoft-Windows-SimpleTCP /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-SMBServer /r
install_wim_tweak.exe /o /c Microsoft-Windows-SMB1 /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-SmbDirect /n /r
echo Debloating Multimedia Blotware Compoments
install_wim_tweak.exe /o /c Microsoft-Windows-Shell-SoundThemes /r
echo &Title Uninstall WMP (42 percent)
install_wim_tweak.exe /o /c Microsoft-Windows-WMPNetworkSharingService /r
install_wim_tweak.exe /o /c Microsoft-Windows-WinSat /r
install_wim_tweak.exe /o /c Microsoft-Windows-WindowsMediaPlayer-Troubleshooter /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-WinSATMediaFiles-Package /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-TerminalServices /r 
install_wim_tweak.exe /o /c Microsoft-Windows-Media-Streaming /r
install_wim_tweak.exe /o /c Microsoft-Windows-MediaPlayer-Payload /r
echo &Title Script is configuring Windows (65 percent)
install_wim_tweak.exe /o /c Microsoft-Windows-ScreenSavers /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-SearchEngine-Client /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-SecureBoot-Package /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-SensorDataService /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Shell-RetailDemo /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Shell-SoundThemes /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Skype-ORTC /n /r 
install_wim_tweak.exe /o /c Microsoft-Windows-SmartCard /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Holographic-Desktop /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-SnippingTool /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-SQM-Package /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-StepsRecorder /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Telnet /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-TerminalServices /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Printing-3D /r
install_wim_tweak.exe /o /c Microsoft-Windows-QuickAssist /n /r
install_wim_tweak.exe /o /c Microsoft-Windows-Internet-Browser /r
install_wim_tweak.exe /o /c Microsoft-Windows-Mail /r
install_wim_tweak.exe /o /c Microsoft-Windows-PointOfService /r

scrr.vbs
reg add scriptreg.reg
echo &Title Script is configuring UWP
sc delete MapsBroker
sc delete lfsvc
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsUpdateTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Maps\MapsToastTask" /disable
schtasks /Change /TN "\Microsoft\Windows\HelloFace\FODCleanupTask" /Disable
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
schtasks /Change /TN "Microsoft\Windows\License Manager\TempSignedLicenseExchange" /disable
schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /disable
schtasks /Change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\LoginCheck" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\Registration" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\LicenseAcquisition" /disable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\RecommendedTroubleshootingScanner" /disable
schtasks /Change /TN "\Microsoft\Windows\Diagnosis\Scheduled" /disable
schtasks /Change /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable
del /F /Q "C:\Windows\System32\Tasks\Microsoft\Windows\SettingSync\*
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\FirewallRules"  /v "{2765E0F4-2918-4A46-B9C9-43CDD8FCBA2B}" /t REG_SZ /d  "BlockCortana|Action=Block|Active=TRUE|Dir=Out|App=C:\windows\systemapps\microsoft.windows.cortana_cw5n1h2txyewy\searchui.exe|Name=Search  and Cortana  application|AppPkgId=S-1-15-2-1861897761-1695161497-2927542615-642690995-327840285-2659745135-2630312742|" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /v Disabled /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 2 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v ScheduledInstallDay /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v ScheduledInstallTime /t REG_DWORD /d 3 /f
reg add "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform" /v NoGenTicket /t REG_DWORD /d 1 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP\SettingsPage" /V BluetoothLastDisabledNearShare /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /V NearShareChannelUserAuthzPolicy /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CDP" /V CdpSessionUserAuthzPolicy /T REG_DWORD /D 1 /F
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableSoftLanding /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsSpotlightFeatures /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v DoNotShowFeedbackNotifications /t REG_DWORD /d 1 /f
sc delete DiagTrack
sc delete dmwappushservice
sc delete WerSvc
sc delete OneSyncSvc
sc delete MessagingService
sc delete wercplsupport
sc delete PcaSvc
sc config wlidsvc start=demand
sc delete wisvc
sc delete RetailDemo
sc delete diagsvc
sc delete shpamsvc 
sc delete TermService
sc delete UmRdpService
sc delete SessionEnv
sc delete TroubleshootingSvc
sc delete diagnosticshub.standardcollector.service
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v Start /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoRecentDocsHistory" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\CompatTelRunner.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\DeviceCensus.exe" /v Debugger /t REG_SZ /d "%windir%\System32\taskkill.exe" /f
reg add "HKLM\Software\Policies\Microsoft\WindowsInkWorkspace" /v AllowSuggestedAppsInWindowsInkWorkspace /t REG_DWORD /d 0 /f
powercfg -attributes SUB_DISK 6b013a00-f775-4d61-9036-a62f7e7a6a5b -ATTRIB_HIDE
fsutil behavior set disabledeletenotify NTFS 0
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Shell Extensions\Blocked" /V {7AD84985-87B4-4a16-BE58-8B72A5B390F7} /T REG_SZ /D "Play to Menu" /F
bcdedit /set testsigning off
bcdedit /set nointegritychecks off
taskkill /f /im explorer.exe
start explorer.exe
XCopy /E /I GPO C:\Windows\System32\GroupPolicy
powercfg /h /type reduced
bcdedit /set {default} bootlog No
bcdedit /set {default} recoveryenabled No
UserAccountControlSettings.exe
echo &Title Configure Tasks (92 percent)
CLS
echo &Title Configure Manual Settings (95 percent)
echo //Dism++ 
echo Disabled: Derivery Optimization, System Guard Runtime Monitor, Security Center,Diagnostic Services
echo Manual: Software Protection, driver and software services, Capture, GameDVR Services
echo Deleted all Optional Features and Packages, minimal Tweaks
echo Delete APPXs and UWPs packages
echo Delete Start-Up Entires
"dism++\Dism++x64.exe"
pause
echo //Windows Costum Tools
echo //1. Modify and Config Windows Context Menu (optional)
"AddOns\manag\ContextMenuManager.exe"
"AddOns\manag\WinXMenuEditor.exe"
pause
CLS
echo //2.Configure ControlPanel/Settings Layout (optional)
"AddOns\manag\SettingsSecurity.exe"
"AddOns\manag\ThisPCManager.exe"
"AddOns\manag\NavigationPaneManager.exe"
CLS
echo &Title Script - Updating Hosts (99 percent)

IF NOT EXIST HOSTS GOTO noHostsFile
IF "%OS%"=="Windows_NT" GOTO HostsFile
IF EXIST %winbootdir%\HOSTS*.* ATTRIB +A -H -R -S %winbootdir%\HOSTS*.*>NUL
IF EXIST %winbootdir%\HOSTS.MVP DEL %winbootdir%\HOSTS.MVP>NUL
IF EXIST %winbootdir%\HOSTS REN %winbootdir%\HOSTS HOSTS.MVP>NUL
IF EXIST %winbootdir%\NUL COPY /Y HOSTS %winbootdir%>NUL
GOTO noHostsFile
:HostsFile
IF EXIST %windir%\SYSTEM32\DRIVERS\ETC\HOSTS*.* ATTRIB +A -H -R -S %windir%\SYSTEM32\DRIVERS\ETC\HOSTS*.*>NUL
IF EXIST %windir%\SYSTEM32\DRIVERS\ETC\HOSTS.MVP DEL %windir%\SYSTEM32\DRIVERS\ETC\HOSTS.MVP>NUL
IF EXIST %windir%\SYSTEM32\DRIVERS\ETC\HOSTS REN %windir%\SYSTEM32\DRIVERS\ETC\HOSTS HOSTS.MVP>NUL
IF EXIST %windir%\SYSTEM32\DRIVERS\ETC\NUL COPY /Y HOSTS %windir%\SYSTEM32\DRIVERS\ETC>NUL
pause