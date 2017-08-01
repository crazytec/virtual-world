@echo off
title virtual world system
echo ver 1.0 beta 2 (editing...)
echo this is consol 1.
echo detecting setting file...
if not exist setting.ini goto setnew
echo setting file detected.
echo loading setting file...
for /f %%i in (setting.ini) do (set %%i)
if not exist sav_%lastok%.ai goto genstai
copy sav_%lastok%.ai stai.ai
echo generating diffculty...
echo generating dimension...
:gen_di
set dimension=%random%
if %dimension%==1 goto gen_di
if %dimension% GTR %max_dimen% (echo %dimension% seems too big for dimensipn. Trying again...&goto gen_di)
echo generating axis on each dimension
:gen_axis
set a=1
:gen_axie
set b=%random%
set axis_%a%=%b%
if %b% GTR %max_axis% goto gen_axie
echo %b% seems ok for axis %a%.
if %a%==%dimension% goto gen_axid
set /a a=%a%+1
goto gen_axie
:gen_axid
echo generating success mechanism...
set a=%random%
set /a success=%a%%%2
if %success%==0 (echo success machanism:hungry game mode.)
if %success%==1 (echo success machanism:most energy mode.)
if %success%==2 (echo success machanism:most cell mode.)
echo generating energy difficulty...
set /a engy_diff=%random%+1
set /a engy_difg=%engy_diff%*10000/32768
echo energy difficulty:0.000%energy_difg%
if %success%==0 (goto maxtimede)
