@echo off
title virtual world system
call :text message "ver 1.0 (test version)" 
call :text message starting framework...
start framework.bat
call :text warning this is consol 1. Can you see?
pause
call :text message You will see the main process here.
call :text start
:text
::message,warning,error,success
