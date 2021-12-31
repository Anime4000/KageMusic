; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "KageMusic"
#define MyAppVersion "1.12"
#define MyAppPublisher "Anime4000"
#define MyAppURL "https://github.com/Anime4000/KageMusic"
#define MyAppExeName "SpleeterFrontEnd.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{CAFEBABE-4444-5555-6666-DEADF00DBABE}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={{auto}\CureComp Technology\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}

LicenseFile=LICENSE
InfoBeforeFile=README.md
InfoAfterFile=CHANGELOG.md
SetupIconFile=KoteKeras\Resources\Installer.ico
WizardImageFile=KoteKeras\Resources\WizImg100p.bmp,KoteKeras\Resources\WizImg125p.bmp,KoteKeras\Resources\WizImg150p.bmp,KoteKeras\Resources\WizImg175p.bmp,KoteKeras\Resources\WizImg200p.bmp,KoteKeras\Resources\WizImg225p.bmp,KoteKeras\Resources\WizImg250p.bmp

DisableWelcomePage=no

CloseApplications=force
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64

Compression=lzma2/ultra64
SolidCompression=yes

OutputDir=.\
OutputBaseFilename=setup_kagemusic_{#MyAppVersion}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"

[Files]
Source: "SpleeterFrontEnd\bin\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;
Source: "C:\Windows\SystemAI\spleeter\*"; DestDir: "{win}\SystemAI\spleeter"; Flags: ignoreversion recursesubdirs createallsubdirs;

[Dirs]
Name: "{app}"; Permissions: everyone-full
Name: "{win}\SystemAI\spleeter"; Permissions: everyone-full

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce

[Icons]
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}\{#MyAppExeName}"; Comment: "Extract vocal and music instrument from single audio file."; Tasks: desktopicon