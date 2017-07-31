@echo off
title virtual world system
::tmperary variable: tmp
call :text message "ver 1.0 (test version)" 
call :text warning "this is consol 1. Can you see?"
pause
call :text message "You will see the main process here."
call :text message "loading setting..."
if not exist setting.ini (call :text error "no setting file found!"&&call :text error "engine will stop."&&pause&&exit)
for /f %%i in (setting.ini) do (echo loading %%i&&set %%i)
call :text message "now, we are going to create random size of the world."
set tmp=%random%
if %
call :text message "starting framework..."
start framework.bat
:text
::message,warning,error
if "%1"=="message" (color 07&echo %2)
if "%1"=="warning" (color 1E&echo %2)
if "%1"=="error" (color 40&echo %2)
::command should end here.
