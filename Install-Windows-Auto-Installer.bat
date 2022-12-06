move c:\Users\%Username%\Downloads\Windows-Auto-Installer-main.zip c:\Users\%Username%\Desktop\Windows-Auto-Installer-main.zip
unzip.exe Windows-Auto-Installer-main.zip
echo Please Wait...
timeout /t 3 /nobreak > nul
@RD /S /Q "c:\Users\%Username%\Downloads\Windows-Auto-Installer-main.zip"