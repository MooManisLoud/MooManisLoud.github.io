@echo off

title FFD Launcher

set username=%username%

cd C:\Users\%username%\Desktop\FFD 1.0V\VBS

set PROGRAM_SAVESPACE="C:\Users\%username%\Desktop\FFD 1.2V\VBS\clearspace.bat"

set PROGRAM_NAME=VBScrashdetector.vbs

set PROGRAM_PATH="C:\Users\%username%\Desktop\FFD 1.2V\VBS\VBScrashdetector.vbs"

start "" %PROGRAM_PATH%


tasklist /FI "IMAGENAME eq %PROGRAM_NAME%" | find /i "%PROGRAM_NAME%" > nul

if errorlevel 1 (
    echo %PROGRAM_NAME% is loaded.
) else (
    echo %PROGRAM_NAME% is not loaded.
)

start "" %PROGRAM_SAVESPACE%

cd C:\Users\%username%\Desktop\FFD 1.2V\VBS
echo Launching downloader 

timeout /t 10 /nobreak > nul

FunkinFD.bat

echo start

pause