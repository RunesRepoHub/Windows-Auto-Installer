@echo off
setlocal
cd /d %~dp0
Call :UnZipFile "c:\Users\%Username%\Desktop\" "c:\Users\%Username%\Downloads\Windows-Auto-Installer-main.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%

echo Please Wait...
timeout /t 3 /nobreak > nul

del /f /q "c:\Users\%Username%\Downloads\Windows-Auto-Installer-main.zip"
del /f /q "c:\Users\%Username%\Desktop\Windows-Auto-Installer-main\Install-Windows-Auto-Installer.bat"
pause