@echo off
cls
set watch=DayZ Server
title %watch% Watchdog
cd "C:\Program Files (x86)\Steam\steamapps\common\DayZServer"
:watchdog
echo (%time%) %watch% started.
start "DayZ Server" /wait "DayZServer_x64.exe" -config=serverDZ.cfg -port=2302 -dologs -adminlog -netlog -freezecheck
echo (%time%) %watch% closed or crashed, restarting.
goto watchdog