@echo off
color f0
title INF-OS notepad beta

not 
cls
echo If you want to get to line below you must spam space until you get here. 
echo To save click ENTER.
set /p p=
cls
echo Name file
echo To save click ENTER.
set /p namefile=
cls
echo %p% > %namefile%.txt
cls 
exit