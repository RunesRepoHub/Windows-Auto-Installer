echo off

::This is the title of the cmd window, the color and the timestamp.
prompt $T $B $P$G && title Rune Prodution's BAWR Version 1.1.0 && color 2

:: This is the selecting menu
:begin
CLS
echo Select a task:
echo ===========================
echo ---------------------------
echo 1) Install Microsoft Office
echo 2) Install Papercut (Missing EXE)
echo 3) Install Wordmat
echo 4) Install Chrome
echo 5) Install appwriter (Missing EXE)
echo ---------------------------
set /p op=Type option:
if "%op%"=="" goto begin
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
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
goto begin
::------------------------------

::------------------------------
:op2
call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
goto begin
::------------------------------

::------------------------------
:op3
call "c:\Users\%Username%\Downloads\WordMat.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
goto begin
::------------------------------

::------------------------------
:op4
call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\ChromeSetup.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
goto begin

goto begin
::------------------------------

::------------------------------
:op5
call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
goto begin

goto begin
::------------------------------

:exit
@exit