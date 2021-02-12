; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64
AppName=Cartes du Ciel
AppVerName=Cartes du Ciel V3
AppPublisherURL=http://www.ap-i.net/skychart
AppSupportURL=http://www.ap-i.net/skychart
AppUpdatesURL=http://www.ap-i.net/skychart
DefaultDirName={reg:HKCU\Software\Astro_PC\Ciel,Install_Dir|{commonpf64}\Ciel}
UsePreviousAppDir=false
DefaultGroupName=Cartes du Ciel
AllowNoIcons=true
InfoBeforeFile=Presetup\readme.txt
OutputDir=.\
OutputBaseFilename=skychart-windows-x64
Compression=lzma
SolidCompression=true
Uninstallable=true
UninstallLogMode=append
DirExistsWarning=no
UsedUserAreasWarning=no
ShowLanguageDialog=yes
WizardStyle=modern
AppID={{A261F28E-6053-4414-9B84-AA8FE5F47AD4}

[CustomMessages]
CreateStartupIcon=Launch Skychart Clock automatically on Windows startup

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: startupicon; Description: {cm:CreateStartupIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[InstallDelete]
Name: {app}\data\Themes\default\*; Type: filesandordirs; Components: ; Tasks: 
Name: {app}\data\zoneinfo\*; Type: filesandordirs; Components: ; Tasks: 
Name: {app}\data\iridflar; Type: filesandordirs; Components: ; Tasks: 
Name: {app}\doc\wiki_doc\*; Type: filesandordirs; Components: ; Tasks: 
Name: {app}\data\script\script1.cdcps; Type: files; Components: ; Tasks:
Name: {app}\data\script\script2.cdcps; Type: files; Components: ; Tasks:
Name: {app}\data\script\script3.cdcps; Type: files; Components: ; Tasks:
Name: {app}\data\script\phd.cdcps; Type: files; Components: ; Tasks:
Name: {app}\data\jpleph\lnxp2000p2050.430; Type: files; Components: ; Tasks:

[Files]
Source: Data\*; DestDir: {app}; Flags: ignoreversion recursesubdirs createallsubdirs restartreplace
Source: PrivateFiles\*; DestDir: {localappdata}\skychart\; Flags: onlyifdoesntexist
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[UninstallDelete]
Type: filesandordirs; Name: "{localappdata}\skychart\database"

[Registry]
Root: HKCU; Subkey: Software\Astro_PC\Ciel; ValueType: string; ValueName: Install_Dir; ValueData: {app}; Flags: uninsdeletekey
Root: HKCU; Subkey: Software\Astro_PC\VarObs; ValueType: string; ValueName: Install_Dir; ValueData: {app}; Flags: uninsdeletekey

[Icons]
Name: {group}\Cartes du Ciel; Filename: {app}\skychart.exe; WorkingDir: {app}
Name: {group}\Variables Stars; Filename: {app}\varobs.exe; WorkingDir: {app}
Name: {group}\Cartes du Ciel Clock; Filename: {app}\cdcicon.exe; WorkingDir: {app}
Name: {userdesktop}\Cartes du Ciel; Filename: {app}\skychart.exe; WorkingDir: {app}; Tasks: desktopicon
Name: {userstartup}\Cartes du Ciel Clock; Filename: {app}\cdcicon.exe; WorkingDir: {app}; Tasks: startupicon
