@echo off

    set username=%username%
set folder_path1=C:\Users\%username%\AppData\Local\Temp
if not exist %folder_path1% (
  echo Folder not found.
  pause
  exit
)

echo Deleting all files and subfolders within %folder_path1%...
del /s /q %folder_path1%\*.*
for /f "delims=" %%i in ('dir %folder_path1% /s /b /ad ^| sort /r') do rd "%%i" 2>nul
echo Done.

cls

set username=%username%
set folder_path2=C:\Windows\Prefetch
if not exist %folder_path2% (
  echo Folder not found.
  pause
  exit
)

echo Deleting all files and subfolders within %folder_path2%...
del /s /q %folder_path2%\*.*
for /f "delims=" %%i in ('dir %folder_path2% /s /b /ad ^| sort /r') do rd "%%i" 2>nul

echo Emptying Recycle Bin...
rd /s /q C:\$Recycle.Bin

cscript "C:\Users\%username%\Desktop\clearspace\clearspace403.vbs"

exit

