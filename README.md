# Windows-Auto-Installer

## Use

* Download The Latest Release.
* Open the zip folder when it has downloaded (DO NOT UNZIP IT)
* Find the "Install-Windows-Auto-Installer.bat" and run it.
* This will make a folder on the desktop and delete the zip folder.
* Go to your desktop and find the folder "Windows-Auto-Installer".
* In this folder you will find a WAI.bat file and a Exe folder.
    -> You have to manuelly download WordMat and put it into the Exe folder and rename it to "WordMat"
* When you have done this you can run the WAI.bat
 

## Modify

This is a "cell" or in other words this is the "variables" for one pices of software.

````
call "c:\Users\%Username%\Desktop\Windows-Auto-Installer\OfficeSetup.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
````

All you need to change is the `call "c:\Users\%Username%\Desktop\Windows-Auto-Installer\Exe\your-software.exe"`

You should just put your new exe file into the "Exe" folder and change the Exe file name in the end of the string.


