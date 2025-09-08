Get-WmiObject -Class Win32_Product -Filter "Name = 'School Manager - Authentication Agent'" | ForEach-Object { $_.Uninstall() }

Start-Process -FilePath $uninstaller -ArgumentList "--mode unattended" -Wait
