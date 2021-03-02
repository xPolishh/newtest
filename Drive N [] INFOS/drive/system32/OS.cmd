@echo off
color 7
title INF-OS 5.0

:presentation
cls 
color 2
echo ___________________________________________________________________________________________________________________________________________________________________________
echo.
echo                                                                                      CD Art 2020
echo ___________________________________________________________________________________________________________________________________________________________________________
echo.
echo.
echo Loading...
ping localhost -n 3 >nul
echo loading system32
ping localhost -n 3 >nul
echo loading cmdmenusel.exe
ping localhost -n 3 >nul
echo loading CHOICE.exe
ping localhost -n 3 >nul
echo loading OS.cmd
ping localhost -n 3 >nul
echo loading Drive N:
ping localhost -n 5 >nul
echo Processing...
ping localhost -n 6 >nul
echo Done! (4,89 seconds)
ping localhost -n 4 >nul
echo Starting...
ping localhost -n 6 >nul
color 1f
cls
echo n:\drive\system32\OS.exe
ping localhost -n 2 >nul

:starting
cls 
color 1f
echo.
echo.
echo.
echo.
echo                                                   8888888 888b      888 8888888888                    .d88888b.     .d8888b.  
echo                                                    888     8888b    888  888                         d88P" "Y88b   d88P  Y88b 
echo                                                    888     88888b   888  888                        888      888   Y88b.      
echo                                                    888     888Y88b  888 8888888                     888      888    "Y888b.   
echo                                                    888     888 Y88b888  888                         888      888      "Y88b. 
echo                                                    888     888  Y88888   888          8888888       888      888        "888 
echo                                                    888     888   Y8888   888                         Y88b. .d88P   Y88b  d88P 
echo                                                   8888888 888    Y888    888                          "Y88888P"   "  Y8888P"                                                           
echo.
echo.
echo                                                                                        5.0
echo                                                                          _______________________________
echo.
echo                                                                                   Home Edition
echo                                                                                    CD Art 2020
echo.
echo.
echo Loading...
echo.

ping localhost -n 6 >nul  
:logging
cls
color f
echo Tip: To avoid bugs and glitches please set your cmd to fullscreen (maximize your window)
echo Enter your name/nickname:                                                                                                  
set /p name=
cls
goto :pass

:pass
cls 
echo Enter system authorization password:
set /p "cho="

if %cho%==authorizationpassword goto pulpit
if not %cho%==authorizationpassword goto fail

:fail
cls 
echo Wrong password! Try again in 4 seconds
ping localhost -n 5 >nul 
goto pass
:pulpit 
cls
color f0
echo ___________________________________________________________________________________________________________________________________________________________________________
echo.
echo                                         Logged as %name%                        CD Art 2020                       INF-OS 5.0
echo ___________________________________________________________________________________________________________________________________________________________________________

cmdMenuSel f80f "NOTEPAD.EXE" "WEBSITEXPLORER.EXE" "SYSTEM" "CRASH" "BIOS" "SYSTEM32.FLD" "BATCHC++.EXE" "FILE EXPLORER"  "CDART"  "UPDATER.EXE" "INF-OS EXECUTIVE.EXE" "CALC.EXE" "OFFICE APPS.SHORT" "FIREWALL" "SETTINGS.EXE" "Turn off"

if %ERRORLEVEL% == 1 goto not
if %ERRORLEVEL% == 2 goto internet 
if %ERRORLEVEL% == 3 goto inf 
if %ERRORLEVEL% == 4 goto deleteos
if %ERRORLEVEL% == 5 goto bios
if %ERRORLEVEL% == 6 goto sst32
if %ERRORLEVEL% == 7 goto c++
if %ERRORLEVEL% == 8 goto expl 
if %ERRORLEVEL% == 9 goto logo
if %ERRORLEVEL% == 10 goto update
if %ERRORLEVEL% == 11 goto inf-dos 
if %ERRORLEVEL% == 12 goto kal
if %ERRORLEVEL% == 13 goto office
if %ERRORLEVEL% == 14 goto win10web
if %ERRORLEVEL% == 15 goto firewall
if %ERRORLEVEL%== 16 goto settings
if %ERRORLEVEL% == 17 goto shutdown

:not 
cls
start notepad.bat
cls
goto pulpit
pause

:internet
cls
echo Search websites: (example: https://google.com)
set /p adress=
goto int2

:int2
echo.
echo Adress saved

cmdMenuSel f80f "Search" "Go back"

if %errorlevel% == 1 start %adress%
if %errorlevel% == 2 goto pulpit
cls 
goto pulpit

:inf 
cls 
echo INF-OS 5.0
echo Version: 5.0.22d45b/c 
echo Producer: CDArt
echo Operating file: OS.cmd
echo Type: Text OS
echo Base: Windows Command Prompt
echo Compatybility: Windows 10,8,7

cmdMenuSel f80f "Back"

if %errorlevel% == 1 goto pulpit

:deleteos
cls 
echo (B) Back 
echo (C) Continue
set /p "cho=>" 

if %cho%==b goto pulpit
if %cho%==c goto BSOD
cls

:BSOD
cls 
color 1E 
echo A problem has been detected and INF-OS has been shut down to prevent damage to your computer.
echo.
echo NMI_HARDWARE_FAILURE
echo.
echo If this is first time you've seen this error screen,
echo restart your Operating system. If this screen appears again, follow these steps:
echo.
echo Check to make sure any new hardware or software is properly installed.
echo If this is a new installation, ask your hardware or software manufacurer
echo for any INF-OS updates you might need.
echo.
echo If problems continue, disable or remove any newly installed hardware
echo or software. Disable BIOS memory options such as  caching or shadownig.
echo If you need to use  INF-DOS to remove or disable components, restart your OS. Type r to 
echo restart.
echo.
echo Tip
echo Type r to restart.                                                      
set /p "cho=>"

if %cho%==r color 7
goto restartingBSOD
cls

:restartingBSOD
cls 
color f
echo ... restarting BIOS
ping localhost -n 7 >nul

:restartWIP
cls 
color f
echo tap start to continue
set /p "cho=>"
if %cho%==start goto starting
if not %cho%==start goto failSTARTING

:failSTARTING
cls 
echo UNKNOWN COMMAND
echo SYSTEM WILL BE SHUT DOWN IN 3 SECONDS TO RESTART YOUR OS
ping localhost -n 4 >nul
goto shutdowned
:bios
cls 
echo Time:
echo %time% 
echo.
echo INF-OS 4.0 
echo Core: Windows 10
cmdMenuSel f80f "Quit" "Disable BIOS"

if %errorlevel% == 1 goto pulpit
if %errorlevel% == 2 stop

:sst32
cls 
echo File explorer
echo ___________________________________________________________________________________________________________________________________________________________________________
echo.
cmdMenuSel f80f "OS.bat" "CHOICE.exe" "cmdmenusel.exe" "                                                                                                                                                               [x]"
if %errorlevel% == 1 goto osbat
if %errorlevel% == 2 goto choiceexe
if %errorlevel% == 3 goto cmdexe 
if %errorlevel% == 4 goto pulpit

:osbat
cls
echo File explorer
echo ___________________________________________________________________________________________________________________________________________________________________________
echo. 
echo you dont have permission to view this file
cmdMenuSel f80f "                                                                                                                                        [x]"

if %errorlevel% == 1 goto sst32
:choiceexe
cls
echo File explorer
echo ___________________________________________________________________________________________________________________________________________________________________________
echo.
echo you dont have permission to view this file
cmdMenuSel f80f "                                                                                                                                        [x]"

if %errorlevel% == 1 goto sst32

:cmdexe 
cls
echo File explorer
echo ___________________________________________________________________________________________________________________________________________________________________________
echo.
echo you dont have permission to view this file
cmdMenuSel f80f "                                                                                                                                        [x]"

if %errorlevel% == 1 goto sst32

:c++
cls 
echo select:
cmdMenuSel f80f "Batch editor" "Windows Powershell" "Windows Command Prompt" "INF-OS cmd" "Exit

set /p "cho=>"

if %errorlevel% == 1 goto c++2
if %errorlevel% == 2 goto powershell
if %errorlevel% == 3 goto cmd
if %errorlevel% == 4 goto dos
if %errorlevel% == 5 goto pulpit

:powershell 
start powershell.exe 
goto pulpit
cls  

:cmd 
start cmd.exe 
goto pulpit
cls  

:c++2 
cls
echo Mozesz pisac
set /p p=
cls
echo Nadaj nazwe pliku
set /p name=
cls
echo %p% > %name%.bat 
cls
goto pulpit

:expl
cls 
echo File explorer
echo ___________________________________________________________________________________________________________________________________________________________________________
echo To open files using FILE OPENER in command prompt you must type filename.extintion (Example file.txt). Same thing with App opener
cmdMenuSel f80f "Drive N:" "File opener" "Exit"

if %errorlevel% == 1 goto drive 
if %errorlevel% == 2 goto FileOpnr
if %errorlevel% == 3 goto pulpit

:drive
cls 
echo WARNING! YOU WILL BE ABLE TO EDIT SYSTEM FILES NOW. MOVING FILES ETC CAN BROKE SYSTEM. DO YOU WANT TO CONTINUE
echo (c) continue
echo (b) cancel

set /p "cho=>"

if %cho%==c goto driveview
if %cho%==b goto expl
if not %cho%==b goto unknown

:unknown
cls
echo unknown command 
echo try again
ping localhost -n 5 >nul
goto drive

:driveview
cls
set %driveviewpath%="C:\Users\%username%\Desktop\INF-OS\Drive N [] INFOS\drive\system32"
ping localhost -n 2 >nul
start %driveviewpath%
cls
goto expl

:FileOpnr
cls 
start "C:\Users\%username%\Desktop\INF-OS\Drive N [] INFOS\drive\system32"
cls 
goto expl

:logo 
cls 
echo                                                   0000   0000
echo                                                  0    0 0    0
echo                                                  0     0     0
echo                                                  0    0 0    0
echo                                                   0000   0000
echo.
echo WELCOME TO CD ART SYSTEM - INF-OS 5.0
echo another products:
echo Infinity OS
echo INF-DOS
echo INF-OS 3.0
echo INF-OS 2.0
echo INF-OS 4.0
echo INF-OS 5.0
echo Infinity Server 2019 
echo.
echo Website: cdart.tk
echo.
cmdMenuSel f80f "back" 

if %errorlevel% == 1 goto pulpit

:update 
cls 
echo INF-OS Update Tool
echo.
echo Brak dostepnych aktualizacji
echo Sprawdzane dzisiaj (system sprawdza aktualizacje automatycznie)
echo.
echo (x) wyjdz

set /p "cho=>"

if %cho%==x goto pulpit

:mcnet
cls 
start https://minecraft.net/
goto pulpit
cls 

:inf-dos 
cls
shutdown
start dos
goto pulpit 
cls

:office
cls 
echo Cd Art Write (1) [] Ms Paint (2)
echo                  [] 
echo.

set /p "cho=>"

if %cho%==1 goto write
if %cho%==2 start mspaint.exe 

:write 
cls 
echo Pisz (c) [] Wyjdz (q) [] powrot do strony glowniej (p) []

set /p "cho=>"

if %cho%==c goto write2
if %cho%==q goto pulpit
if %cho%==p goto write

:write2
cls 
echo format pliku do zapisania:
echo txt (1)
echo bat (c++) (2)

set /p "cho=>"

if %cho%==1 goto write3txt
if %cho%==2 goto c++

:write3txt
cls
echo Mozesz pisac:
set /p p=
cls
echo Nadaj nazwe pliku
set /p 1=
cls
echo %p% > %1%.txt
cls 
goto pulpit 

:win10web
cls 
start https://www.microsoft.com/pl-pl/windows 
goto pulpit
cls

:kal 
cls 
start calcinf
goto pulpit 
cls 

:firewall
cls 
echo INF-OS 3.0 Firewall (v.0.5.6)
echo.
echo Skanuj teraz (s)
echo Powrot (x)

set /p "cho=>"

if %cho%==s goto scan
if %cho%==x goto pulpit

:scan
echo skanowanie...
echo czekaj 40 sekund i zamknij (x)
echo.

set /p "cho=>"

if %cho%==x goto scanend

:scanend
cls 
echo nie wykryto wirusow 
echo skanuj jeszcze raz (s)
echo Zamknij (x)

set /p "cho=>"

if %cho%==s goto scan
if %cho%==x goto pulpit

:shutdown
cls 
color 
cmdMenuSel f80f "Shut down" "Log out"
if %errorlevel% == 1 goto shutdowning
if %errorlevel% == 2 goto logging

:shutdowning
cls 
color 1f
echo.
echo.
echo.
echo.
echo                                                   8888888 888b      888 8888888888                    .d88888b.     .d8888b.  
echo                                                    888     8888b    888  888                         d88P" "Y88b   d88P  Y88b 
echo                                                    888     88888b   888  888                        888      888   Y88b.      
echo                                                    888     888Y88b  888 8888888                     888      888    "Y888b.   
echo                                                    888     888 Y88b888  888                         888      888      "Y88b. 
echo                                                    888     888  Y88888   888          8888888       888      888        "888 
echo                                                    888     888   Y8888   888                         Y88b. .d88P   Y88b  d88P 
echo                                                   8888888 888    Y888    888                          "Y88888P"   "  Y8888P"                                                           
echo.
echo.
echo                                                                                        5.0
echo                                                                          _______________________________
echo.
echo                                                                                   Home Edition
echo                                                                                    CD Art 2020
echo.
echo.
echo Shutting down...
echo.

ping localhost -n 7 >nul 
:shutdowned
cls 
color f
set /p "cho="

if %cho%==n:/drive/infos goto presentation
if not %cho%==n:/drive/infos goto shutdowned

:settings
cls 
echo Settings 
echo ___________________________________________________________________________________________________________________________________________________________________________
echo.
cmdMenuSel f80f "Personalization" "Firewall" "Devices" "Update" "Internet"   "                                                                                                                                                                    [x]"                                       
if %errorlevel%==1 goto person
if %errorlevel%==2 goto firewall 
if %errorlevel%==3 goto urzadzenia
if %errorlevel%==4 goto update
if %errorlevel%==5 goto internetsett 
if %errorlevel%==6 goto pulpit

:person
cls 
echo wybierz kolor:
echo (1) zielony
echo.
echo (x) wyjdz 

set /p "cho=>"

if %cho%==1 color a  
goto settings
if %cho%==2 color b
goto settings
if %cho%==3 color c 
goto settings
if %cho%==4 color d
goto settings 
if %cho%==5 color e 
goto settings
if %cho%==6 color f 
goto settings
if %cho%==7 color 8
goto settings
if %cho%==x goto settings
 
:urzadzenia
cls 
echo twoje urzadzenia:
echo mysz
echo pulpit 
echo klawiatura 
echo jadro systemu (windows 10)
echo.
echo (x) powrot 

set /p "cho=>"

if %cho%==x goto settings

:internetsett
cls 
echo Polaczenie internetowe - nie wykryto (sparawdz polaczenie w jadrze systemu)
echo.
echo konta na tym systemie:
echo Zalogowane:
echo %name%
echo.
echo (x) powrot 

set /p "cho=>"

if %cho%==x goto settings
 