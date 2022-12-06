# Windows-Auto-Installer
 
## Requirements 

* You will need a USB drive that has been formatted as "D:" drive.
* You will have to download the exe files you need to auto install.
* You will have to rename the files if you want to download newer versions.

## Use
1. Download and unzip.

2. Move folder Windows-Auto-Installer to desktop

3. Open folder Windows-Auto-Installer

4. Dubble click on the  WAI.bat file

5. Select the option you want:

* Run the installer 
* Exites installer 
* Get help 

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


