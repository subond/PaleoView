; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{6175BF8E-2028-4E5B-BF1F-2D163DC79F36}
AppName=PaleoView
AppVersion=1.5.1
AppVerName=PaleoView v1.5.1
AppPublisher=Global Ecology Lab
AppPublisherURL=https://github.com/GlobalEcologyLab/PaleoView
AppSupportURL=https://github.com/GlobalEcologyLab/PaleoView
AppUpdatesURL=https://github.com/GlobalEcologyLab/PaleoView
DefaultDirName={pf}\PaleoView v1.5.1
DefaultGroupName=PaleoView v1.5.1
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Sean\GoogleDrive\GEL-Archive\PythonResources\vcredist_x86.exe"; DestDir: {tmp}
Source: "dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "paleo_view_config.txt"; DestDir: "{app}"
Source: "Map Data/*"; DestDir: "{app}/Map Data"; Flags: recursesubdirs createallsubdirs
Source: "Bias Corrections/*"; DestDir: "{app}/Bias Corrections"; Flags: recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files vcredist_x86.exe

[Icons]
Name: "{group}\PaleoView v1.5.1"; Filename: "{app}\paleo_view_v1_5_1.exe"
Name: "{commondesktop}\PaleoView v1.5.1"; Filename: "{app}\paleo_view_v1_5_1.exe"; Tasks: desktopicon

[Run]
Filename: "{tmp}\vcredist_x86.exe"; Parameters: "/qu"; StatusMsg: "Installing Microsoft Visual C++ 2008 Redistributable Package..."
Filename: "{tmp}\vcredist_x86.exe"; Parameters: ""; StatusMsg: "Installing Microsoft Visual C++ 2008 Redistributable Package..."
Filename: "{app}\paleo_view_v1_5_1.exe"; Description: "{cm:LaunchProgram,PaleoView}"; Flags: nowait postinstall skipifsilent
