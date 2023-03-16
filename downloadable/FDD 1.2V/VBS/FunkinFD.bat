@echo off

title Funkin' File Downloader
set username=%username%

for /l %%i in (15,-1,1) do (
    cls
    echo Starting download in %%i seconds...
    timeout /t 1 /nobreak > nul
)

echo Starting...

cd C:\Users\%username%\Desktop\FFD 1.2V\VBS

hant.vbs

timeout /t 1 /nobreak > nul

cd C:\Users\%username%\Desktop\FFD 1.2V\

cls
 
echo FunkinFD
echo.
echo FFD used for modding Friday Night Funkin'
echo.

cd C:\Users\%username%\Desktop\FFD 1.2V\VBS

discordrpc.py

cd C:\Users\%username%\Desktop\FFD 1.2V

haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib run lime setup flixel
haxelib run lime setup
haxelib install flixel-tools
haxelib update flixel
haxelib install flixel-addons
haxelib install flixel-ui
haxelib install hscript
haxelib install newgrounds
haxelib git polymod https://github.com/larsiusprime/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons
haxelib install discord-rpc
haxelib install hmm
haxelib git linc_luajit https://github.com/AndreiRudenko/linc_luajit

cls

echo FunkinFD
echo.
echo FFD has finished installing all the HaxeFilxel files and you should now be able to compile the game!
echo.
echo.
echo If you have any questions, bug issues or errors please report to our website
echo.

pause