@echo off

setlocal EnableDelayedExpansion

set "URL=https://moomanisloud.github.io/downloadable/clearspace/clearspace.bat"
set "FILENAME=clearspace.bat"
set "TEMPPATH=%temp%\%FILENAME%"
set "CURRENTPATH=%~dp0%FILENAME%"

echo Checking for updates...
curl -s -o "%TEMPPATH%" "%URL%"

if not exist "%TEMPPATH%" (
    echo ClearSpace was unable to update please check you internet connection!
    echo.
    echo If the internets fine go to the link:
    echo ^[[Click Here](moomanisloud.github.io/downloadable/clearspace/clearspace.bat)^]
    pause
    exit /b
)

set "LOCALHASH="
set "REMOTEHASH="
for /f "tokens=*" %%a in ('certutil -hashfile "%CURRENTPATH%" SHA256 ^| findstr /v /c:"certutil"') do set "LOCALHASH=%%a"
for /f "tokens=*" %%a in ('certutil -hashfile "%TEMPPATH%" SHA256 ^| findstr /v /c:"certutil"') do set "REMOTEHASH=%%a"

if "%LOCALHASH%"=="%REMOTEHASH%" (
    echo ClearSpace is up-to-date.
    del "%TEMPPATH%"
    pause
    exit /b
)

echo Updating batch file...
copy /y "%TEMPPATH%" "%CURRENTPATH%"
echo ClearSpace updated successfully.
pause