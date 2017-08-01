@echo off
title virtual world system
call :text message "ver 1.0 (test version)" 
call :text warning "this is consol 1. Can you see?"
pause
call :text message "You will see the main process here."
call :text message "loading setting..."
if not exist setting.ini goto setting
for /f %%i in (setting.ini) do (set %%i)
call :text message "Everything should be fine now (as long as you didn't edit other file)."
if "%lastai%"=="" goto allnew
call :text message "ok, AI finded."
call :text message "now, we are going to create random size of the world."
:xmax
set x_max=%random%
call :text message "trying using %x_max% for x max number."
::maxx and maxy is the mexium places in setting.
if %x_max% gtr %maxx% goto xmaxe
:ymax
set y_max=%random%
call :text message "trying using %x_max% for y max number."
::maxx and maxy is the mexium places in setting.
if %y_max% gtr %maxy% goto ymaxe
call :text message "starting framework..."
start framework.bat
exit
:xmaxe
call :text warning "%x_max% is too big."
goto xmax
:ymaxe
call :text warning "%x_max% is too big."
goto ymax
:text
::message,warning,error
if "%1"=="message" (color 07&echo %2)
if "%1"=="warning" (color 1E&echo %2)
if "%1"=="error" (color 40&echo %2)
::command should end here.
