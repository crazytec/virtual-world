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
::如果dimension大于9，有可能在创建生命初始位置时坐标轴重叠，导致大于9的坐标轴无效。
if %dimension% GTR 9 (echo %dimension% seems too big for dimensipn. Trying again...&goto gen_di)
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
:gen_ail
set atlastai=%random%
if %atlastai% GTR %max_ail% goto gen_ail
echo at last ai: %atlastai%
set tmp=%random%
set sucshow=%tmp%%%2
if %success%==0 (goto gen_matd)
:gen_mat
set maxtime=%random%
if %maxtime% GTR %max_maxtime% goto gen_mat
echo max time:%maxtime%
:gen_matd
set tmp=%random%
set ismaxsee=%tmp%%%2
if %ismaxsee%==0 goto gen_mxsd
set maxsee=%random%
echo max see:%maxsee% blocks
:gen_mxsd
:gen_sene
set seelevel=%random%
set a=1
:gen_senf
set perfix_%a%=%random%
if %a%==%seelevel% goto gen_seng
set /a a=%a%+1
goto gen_senf
:gen_seng
set copytime=%random%
set mutation=%random%
set tmp=%mutation%*10000/32768
echo Gene mutation opssible:0.000%tmp%
if %copytime% GTR %max_cpytime% goto gen_seng
start /wait gene_copy.bat %copytime% start
start /wait gene_error.bat %copytime% %mutation%
set a=1
:stpsta
set b=1
:stpstb
set c=%random%
set %a%_x%b%=%c%
set axis_%b% >a.txt
for /f %%i in a.txt do (if 
if %c% GTR 
