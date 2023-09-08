@echo off
title CLEANING SCRIPTS
if "%1"=="runas" (
title CLEANING SCRIPTS
  cd %~dp0
  wmic process where name="y0.exe" CALL setpriority "Realtime"
  exit
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
cls
title CLEANONG TEMP FILES
echo %TEMP%
set "dossier_temporaire=%TEMP%"
del /q "%dossier_temporaire%\*.tmp"
cls
set "nouvelle_resolution=1920x1080"
powershell -command "(Get-WmiObject -Namespace root\wmi -Class WmiMonitorBasicDisplayParams).WmiSetBrightness(1, %nouvelle_resolution%)"
cls
pause

exit