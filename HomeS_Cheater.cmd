@echo off
echo Welcome to HomeSchooling Cheater
:loop
echo 1 Disconnect from Wlan
echo 2 Close Window
echo 3 shutdown
echo 4 Exit
SET /P Test=Command:
if %Test% EQU 1 (echo.
@echo on
netsh wlan disconnect
@echo off
PAUSE
goto end)

if %Test% EQU 2 (echo.
set /P program=Please write the programm you want to close with an .exe at the end: 
taskkill /IM %program% 
pause
goto close
)
if %Test% EQU 3 (pause
shutdown /t 30
exit)
if %Test% EQU 4 (exit)
:end
@echo off
echo.
goto loop
:close
set /P program=press enter
taskkill /IM %program% 
goto end