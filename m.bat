@echo off
setlocal enabledelayedexpansion

set VS_path=C:\Program Files (x86)\Microsoft Visual Studio 14.0
path %PATH%;%VS_path%\Common7\IDE

set command=
if "%1"==""         set command=/Rebuild
if "%1"=="b"        set command=/build
if "%1"=="r"        set command=/Rebuild
if "%1"=="c"        set command=/clean

if "%command%"=="" (
        echo Error: Invalid command...
        goto PrintHelp
        )


set target=
if "%1"==""         set target=all
if "%1"=="a"        set target=all
if "%1"=="n"        set target=Nuo
if "%1"=="r"        set target=Rom


:Nuo
devenv .\Projects\NuoEncPrj\NuoEnc.sln %command% "Release"
:: copy exe 
copy /Y .\Projects\NuoEncPrj\Release\NuoEnc.exe .\NuoEnc.exe
if "%target%"=="all"	goto Rom
goto exit

:Rom
devenv .\Projects\Nuo2RomPrj\Nuo2RomPrj.sln %command% "Release"
copy /Y .\Projects\Nuo2RomPrj\Release\Nuo2RomPrj.exe .\Nuo2Rom.exe
goto exit


:PrintHelp
setlocal
echo Usage:
echo m.bat [command] [target]
echo * command:
echo     - b / build
echo     - r / rebuild
echo     - c / clean
echo * command:
echo     - a / all
echo     - n / NuoEnc
echo     - r / Nuo2Rom

endlocal

:exit