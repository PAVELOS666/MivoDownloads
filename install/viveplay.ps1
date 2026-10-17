# VivePlay - install with one line in PowerShell:
#   irm https://raw.githubusercontent.com/PAVELOS666/ViveDownloads/main/install/viveplay.ps1 | iex
# Downloads the installer from the latest release, checks its SHA-256 and starts it.
$App = 'VivePlay'
$Base = 'https://github.com/PAVELOS666/ViveDownloads/releases/latest/download'

$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
$line = (Invoke-RestMethod "$Base/SHA256SUMS.txt") -split "`n" | Where-Object { $_ -match "^([0-9a-f]{64})\s+\*?($App-Setup-[0-9.]+\.exe)\s*$" } | Select-Object -First 1
if (-not $line) { throw "$App installer not found in the latest release." }
$hash = $Matches[1]; $file = $Matches[2]
$out = Join-Path ([IO.Path]::GetTempPath()) $file
Write-Host "Downloading $file ..." -ForegroundColor Cyan
Invoke-WebRequest "$Base/$file" -OutFile $out -UseBasicParsing
$fs = [IO.File]::OpenRead($out); try { $got = -join ([Security.Cryptography.SHA256]::Create().ComputeHash($fs) | ForEach-Object { $_.ToString('x2') }) } finally { $fs.Dispose() }
if ($got -ne $hash) { Remove-Item $out -Force; throw "SHA-256 mismatch - download corrupted, nothing was installed." }
Write-Host "SHA-256 OK. Starting the installer ..." -ForegroundColor Green
Start-Process -FilePath $out -Wait
Remove-Item $out -Force -ErrorAction SilentlyContinue
