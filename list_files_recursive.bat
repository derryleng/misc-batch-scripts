@echo off
chcp 1252
if exist filenamelist.txt del filenamelist.txt /q
>NUL chcp 65001
::for /f "delims=" %%i in ('dir /b /a-d /s') do echo %%~nxi>>filenamelist.txt
for /f "delims=" %%i in ('dir /b /a-d /s') do echo %%~dpi%%~nxi>>filenamelist.txt
if not exist filenamelist.txt goto no_file
start filenamelist.txt
exit
:no_file
cls
echo
pause
