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
echo 3) How does Windows Auto Installer Work?
echo 4) Report a bug or an error.
echo ------------------------------------
set /p op=Type option:
if "%op%"=="" goto begin
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
::------------------------------
::User input
echo Please Pick an option:
goto begin
::------------------------------

::This section is to configured the options
::------------------------------
:op1
call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\Exe\OfficeSetup.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause


call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\Exe\WordMat.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause


call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\Exe\ChromeSetup.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause

@RD /S /Q "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\"

goto exit
::------------------------------

::------------------------------
:op2

goto exit
::------------------------------

::------------------------------
:op3

rundll32 url.dll,FileProtocolHandler https://github.com/rune004/Windows-Auto-Installer

goto begin

::-------------------------------

::-------------------------------
:op4
rundll32 url.dll,FileProtocolHandler https://github.com/rune004/Windows-Auto-Installer/issues

goto begin
::-------------------------------

:exit
@exit