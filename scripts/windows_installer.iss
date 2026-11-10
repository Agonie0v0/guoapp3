#ifndef AppSlug
  #error AppSlug is required
#endif
#ifndef AppName
  #error AppName is required
#endif
#ifndef AppVersion
  #error AppVersion is required
#endif
#ifndef AppVersionNumber
  #error AppVersionNumber is required
#endif

[Setup]
AppId=Agonie0v0.{#AppSlug}
AppName={#AppName}
AppVersion={#AppVersion}
VersionInfoVersion={#AppVersionNumber}
DefaultDirName={localappdata}\Programs\{#AppSlug}
DefaultGroupName={#AppName}
OutputDir=..\dist\windows
OutputBaseFilename={#AppSlug}-{#AppVersion}-windows-x64-setup
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=lowest
WizardStyle=modern
UninstallDisplayIcon={app}\zhenguojian.exe
CloseApplications=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; Flags: unchecked

[Files]
Source: "..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\zhenguojian.exe"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\zhenguojian.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\zhenguojian.exe"; Description: "Launch {#AppName}"; Flags: nowait postinstall skipifsilent
