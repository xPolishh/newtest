@echo off
title INF-OS Command Prompt
color 7

:cmd
echo CDArt INF-OS Version 5.0.22d45b/c 
echo (c) 2020 CDArt All rights reserved
echo.
ping localhost -n 1 >nul

:commands 
set /p "cmd=N:\drive\system32\dos>"

if %cmd%==help goto help
if %cmd%==cmd goto startcmd
if %cmd%==dos start dos
if %cmd%==exit exit 
if %cmd%==open start "C:\Users\%username%\Desktop\INF-OS\Drive N [] INFOS\drive\system32"
if %cmd%==dir goto directory 
if %cmd%==drive goto drivestart
if %cmd%==cd goto cd

:help 
echo List of INF-DOS commands:
echo.
echo help - show this list of command
echo cmd - starts windows command prompt
echo dos  - opens new INF-DOS 
echo exit  - leaves 
echo open - opens path to INF-OS system32
echo dir   - opens directory of INF-DOS file
echo drive - opens selected drive
echo cd   - switching between folders
echo 

ping localhost n- 1 >nul
goto commands

:directory
echo 
echo Directory of dos
echo.
echo C:\Users\%username%\Desktop\INF-OS\Drive N [] INFOS\drive\system32
echo.
echo calcinf.Ink
echo calcinfos.cmd
echo CHOICE.exe
echo cmdmenusel.exe
echo dos.Ink
echo dos1.bat
echo flappy.Ink
echo notepad.bat
echo OS.cmd

ping localhost n- 1 >nul
goto commands

:drivestart
echo Select drive: (For example C:\)
set /p "cmd=inf-dos:\>"

if %cmd%==C:\ start C:\
if %cmd%==N:\ start "C:\Users\%username%\Desktop\INF-OS\Drive N [] INFOS\drive" echo cmd entry

:startcmd 
start cmd 
cd C:\users\%username%\

:cd
echo Type path to your folder
set /p "pathcd=cd;"
goto cdact

:cdact
echo type gcd to go

set /p "cho="

if %cho%==gcd start %pathcd%
if not %cho%==gcd goto failcd

:failcd
echo unknown command 

ping localhost -n 1 >nul
goto cd


