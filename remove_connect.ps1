$uninstaller = "C:\Program Files (x86)\FamilyZone\MobileZoneAgent\uninstall.exe"
Start-Process -FilePath $uninstaller -ArgumentList "--mode unattended" -Wait
