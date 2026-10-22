# Mivo — downloads

Installers for the free Mivo apps for Windows 10 and 11 (64-bit). More about each app: **https://mivo-apps.vercel.app**

| App | What it is | Installer |
|---|---|---|
| **MivoSurf** | Private browser: cookie vault against cookie stealers, fingerprint protection, ad blocking, Netflix / Prime Video (DRM) | [MivoSurf-Setup-1.0.2.exe](https://github.com/PAVELOS666/MivoDownloads/releases/latest/download/MivoSurf-Setup-1.0.2.exe) |
| **MivoPlay** | Music and video player with a library and downloads | [MivoPlay-Setup-1.8.2.exe](https://github.com/PAVELOS666/MivoDownloads/releases/latest/download/MivoPlay-Setup-1.8.2.exe) |
| **MivoIngest** | DaVinci Resolve plugin: download media and import it straight into the Media Pool | [MivoIngest-Setup-1.0.0.exe](https://github.com/PAVELOS666/MivoDownloads/releases/latest/download/MivoIngest-Setup-1.0.0.exe) |

## Install with one line (PowerShell)

The script downloads the installer from the latest release, checks its SHA-256 and starts it.

```powershell
irm https://raw.githubusercontent.com/PAVELOS666/MivoDownloads/main/install/mivosurf.ps1 | iex
irm https://raw.githubusercontent.com/PAVELOS666/MivoDownloads/main/install/mivoplay.ps1 | iex
irm https://raw.githubusercontent.com/PAVELOS666/MivoDownloads/main/install/mivoingest.ps1 | iex
```

## Checksums

`SHA256SUMS.txt` is attached to every release. Check a download in PowerShell:

```powershell
Get-FileHash .\MivoSurf-Setup-1.0.2.exe -Algorithm SHA256
```

## SmartScreen

The installers are not signed with a Microsoft code-signing certificate yet, so Windows SmartScreen may warn on the first run: **More info → Run anyway**.
