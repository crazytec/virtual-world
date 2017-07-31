@echo off
title virtual world system
call :text message "ver 1.0 (test version)" 
call :text warning this is consol 1. Can you see?
pause
call :text message You will see the main process here.
call :text message now, we are going to create random size of the world.

call :text message starting framework...
start framework.bat
:text
::message,warning,error,success
