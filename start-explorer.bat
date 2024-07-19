@echo off

:: Stop Steam
"C:\Program Files (x86)\Steam\steam.exe" -shutdown

:: Wait for Steam to terminate
:WAIT_FOR_STEAM
timeout /t 2 /nobreak > nul
tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe" >NUL
if "%ERRORLEVEL%"=="0" goto WAIT_FOR_STEAM

:: Start Explorer
start "" "C:\Windows\explorer.exe"

:: Wait for Explorer to fully load (adjust as needed)
ping -n 3 127.0.0.1 > nul

:: Start Steam (adjust the path as necessary)
start "" "C:\Program Files (x86)\Steam\steam.exe"
