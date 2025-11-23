@echo off
title StreamTube Launcher (Insecure Allowed)
color 0e

echo =================================================
echo   KILLING CHROME TO APPLY NEW SETTINGS...
echo =================================================
taskkill /F /IM chrome.exe /T >nul 2>&1
timeout /t 2 /nobreak >nul

echo.
echo =================================================
echo   OPENING TV WITH HTTP SUPPORT...
echo =================================================

:: Auto-detect Chrome
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    set CHROME="C:\Program Files\Google\Chrome\Application\chrome.exe"
) else (
    set CHROME="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
)

:: Launch with MIXED CONTENT allowed
start "" %CHROME% --user-data-dir="C:\ChromeTV_Temp_Fixed" --disable-web-security --allow-running-insecure-content --no-first-run "C:\IP_main\main.html"


exit
