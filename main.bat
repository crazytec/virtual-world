@echo off
title virtual world system
::tmperary variable: tmp
call :text message "ver 1.0 (test version)" 
call :text warning "this is consol 1. Can you see?"
pause
call :text message "You will see the main process here."
call :text message "now, we are going to create random size of the world."
set 
call :text message "starting framework..."
start framework.bat
:text
::message,warning,error
if "%1"=="message" (color 07&echo %2)
if "%1"=="warning" (color 1E&echo %2)
if "%1"=="error" (color 40&echo %2)
::command should end here.
