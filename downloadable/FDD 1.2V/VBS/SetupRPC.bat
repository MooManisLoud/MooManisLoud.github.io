@echo off

set username=%username%

python -V > nul 2>&1
if %errorlevel% equ 0 (

    pip install pypresence

    cd C:\Users\%username%\Desktop\FFD 1.2V\VBS

discordrpc.py

) else (
    echo Python is not installed on this machine.
    echo.
    echo Python is used to run the RPC
    echo.
    echo.
    echo To download Python ^[[Click Here](http://www.example.com)^]
    echo.
    echo After downloading Python, you need to use pip to install pypresence.
    
    timeout /t 1 > nul
)

pause