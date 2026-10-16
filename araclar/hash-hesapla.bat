@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
title SHA-256 + VirusTotal Link Uretici

if "%~1"=="" (
  echo Kullanim: Bir dosyayi ^(ornek: RPCS3-Turkce-Yama.zip^) bu .bat dosyasinin
  echo uzerine surukleyip birakin.
  echo.
  pause
  exit /b 1
)

echo Dosya: %~nx1
echo.

set "HASH="
for /f "usebackq delims=" %%H in (`powershell -NoProfile -Command "(Get-FileHash -LiteralPath '%~f1' -Algorithm SHA256).Hash"`) do set "HASH=%%H"

if not defined HASH (
  echo Hash hesaplanamadi. Dosyayi baska bir klasore kopyalayip tekrar deneyin.
  pause
  exit /b 1
)

echo SHA-256        : !HASH!
echo VirusTotal link: https://www.virustotal.com/gui/file/!HASH!
echo.

(
  echo !HASH!
  echo https://www.virustotal.com/gui/file/!HASH!
) | clip

echo ^(Hash ve link panoya kopyalandi.^)
echo Dosya henuz taranmadiysa yukleme sayfasi: https://www.virustotal.com/gui/home/upload
pause
