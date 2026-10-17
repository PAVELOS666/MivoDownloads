# Vive — downloads

Installers for the free Vive apps for Windows 10 and 11 (64-bit). More about each app: **https://vive-web-two.vercel.app**

| App | What it is | Installer |
|---|---|---|
| **ViveSurf** | Private browser: cookie vault against cookie stealers, fingerprint protection, ad blocking, Netflix / Prime Video (DRM) | [ViveSurf-Setup-1.0.0.exe](https://github.com/PAVELOS666/ViveDownloads/releases/latest/download/ViveSurf-Setup-1.0.0.exe) |
| **VivePlay** | Music and video player with a library and downloads | [VivePlay-Setup-1.7.0.exe](https://github.com/PAVELOS666/ViveDownloads/releases/latest/download/VivePlay-Setup-1.7.0.exe) |
| **ViveIngest** | DaVinci Resolve plugin: download media and import it straight into the Media Pool | [ViveIngest-Setup-1.0.0.exe](https://github.com/PAVELOS666/ViveDownloads/releases/latest/download/ViveIngest-Setup-1.0.0.exe) |

## Install with one line (PowerShell)

The script downloads the installer from the latest release, checks its SHA-256 and starts it.

```powershell
irm https://raw.githubusercontent.com/PAVELOS666/ViveDownloads/main/install/vivesurf.ps1 | iex
irm https://raw.githubusercontent.com/PAVELOS666/ViveDownloads/main/install/viveplay.ps1 | iex
irm https://raw.githubusercontent.com/PAVELOS666/ViveDownloads/main/install/viveingest.ps1 | iex
```

## Checksums

`SHA256SUMS.txt` is attached to every release. Check a download in PowerShell:

```powershell
Get-FileHash .\ViveSurf-Setup-1.0.0.exe -Algorithm SHA256
```

## SmartScreen

The installers are not signed with a Microsoft code-signing certificate yet, so Windows SmartScreen may warn on the first run: **More info → Run anyway**.
