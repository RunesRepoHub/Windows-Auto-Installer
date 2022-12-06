echo off

::This is the title of the cmd window, the color and the timestamp.
prompt $T $B $P$G && title Rune Prodution's WAI Version 1.1.0 && color 2

:: This is the selecting menu
:begin
CLS
echo ====================================
echo Rune Prodution's WAI Version 1.1.0
echo ====================================
echo Select a task:
echo ====================================
echo ------------------------------------
echo 1) Run Windows Auto Installer
echo 2) Exit Window Auto Installer
echo ------------------------------------
set /p op=Type option:
if "%op%"=="" goto begin
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
::------------------------------
::User input
echo Please Pick an option:
goto begin
::------------------------------

::This section is to configured the options
::------------------------------
:op1
call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\OfficeSetup.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause


call "c:\Users\%Username%\Downloads\WordMat.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause


call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\ChromeSetup.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause


goto exit
::------------------------------

::------------------------------
:op2

goto exit
::------------------------------

:exit
@exit