# Windows-Auto-Installer

## Use

* Download the latest release for USB.
* Move the downloaded zip file to a USB.
* Copy the zip file to "target" machine.

-> You have to manuelly download WordMat and put it into the Exe folder and rename it to "WordMat"

-> You have to manuelly download Papercut and put it into the Exe folder and rename it to "Papercut.exe"

-> You have to manuelly download AppWriter and put it into the Exe folder and rename it to "AppWriter.exe"

* Unzip on the desktop (The only way it will work for now)
* Open the folder on the desktop 
* Run the WAI.bat


 

## Modify

This is a "cell" or in other words this is the "variables" for one pices of software.

````
call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-Master-USB\OfficeSetup.exe"
ECHO.
echo Please Wait...
timeout /t 3 /nobreak > nul
ECHO.
pause
````

All you need to change is the `call "c:\Users\%Username%\Desktop\Windows-Auto-Installer-Master-USB\Exe\your-software.exe"`

You should just put your new exe file into the "Exe" folder and change the Exe file name in the end of the string.


