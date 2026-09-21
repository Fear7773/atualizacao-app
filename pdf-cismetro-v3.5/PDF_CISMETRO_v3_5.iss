#define MyAppName "PDF CISMETRO"
#define MyAppVersion "3.5"
#define MyAppExeName "PDF_CISMETRO_v3_5.exe"

[Setup]
AppId={{8F685E67-C9B8-4A47-9B95-AE4D9D5E3F35}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher=CISMETRO
DefaultDirName={localappdata}\Programs\PDF CISMETRO
DefaultGroupName=PDF CISMETRO
UninstallDisplayIcon={app}\{#MyAppExeName}
OutputDir=installer_output
OutputBaseFilename=Instalador_PDF_CISMETRO_v3_5
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
SetupLogging=yes

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: unchecked

[Files]
Source: "..\dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\PDF CISMETRO"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\PDF CISMETRO"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Abrir PDF CISMETRO"; Flags: nowait postinstall skipifsilent
