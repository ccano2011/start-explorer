@echo off

:: Stop Steam
taskkill /f /im steam.exe > nul

:: Start Explorer
start "" "C:\Windows\explorer.exe"

:: Wait for Explorer to fully load (adjust as needed)
ping -n 3 127.0.0.1 > nul

:: Start Steam (adjust the path as necessary)
start "" "C:\Program Files (x86)\Steam\steam.exe"
