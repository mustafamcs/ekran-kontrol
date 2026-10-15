@echo off
chcp 65001 >nul
setlocal

:: Aktif ekran sayısını kontrol et
for /f %%i in ('powershell -NoProfile -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.Screen]::AllScreens.Count"') do set SCREEN_COUNT=%%i

if "%SCREEN_COUNT%" GTR "1" (
    echo 2. ekran aktif. Kapatiliyor ^(Sadece 1. ekran^)...
    "%SystemRoot%\System32\DisplaySwitch.exe" /internal
) else (
    echo 2. ekran kapali. Aciliyor ^(Ekranlari uzat^)...
    "%SystemRoot%\System32\DisplaySwitch.exe" /extend
)

timeout /t 1 /nobreak >nul
endlocal
