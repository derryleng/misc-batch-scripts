@echo off
SETLOCAL EnableDelayedExpansion

cd /D "%~dp0"

echo ========== Creating Inbound Rules ==========
echo.

for /f "delims=" %%i in ('dir /a-d /b *.dll *.exe 2^>nul') do (
	echo %~dp0%%i
	NETSH advfirewall firewall add rule name="%~dp0%%i" dir=in program="%~dp0%%i" action="block" enable="yes")
)

echo ========== Creating Outbound Rules ==========
echo.

for /f "delims=" %%i in ('dir /a-d /b *.dll *.exe 2^>nul') do (
	echo %~dp0%%i
	NETSH advfirewall firewall add rule name="%~dp0%%i" dir=out program="%~dp0%%i" action="block" enable="yes")
)

pause
