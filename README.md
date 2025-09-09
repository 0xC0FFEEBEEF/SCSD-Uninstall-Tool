# SCSD Uninstall Tool

This repository contains PowerShell scripts (`remove_connect.ps1` and `remove_schoolmanager.ps1`) designed to automate the uninstallation of FamilyZone MobileZoneAgent and School Manager (Authentication Agent) from Windows systems.

-## Features
- Removes FamilyZone MobileZoneAgent (`remove_connect.ps1`)
- Removes School Manager - Authentication Agent (`remove_schoolmanager.ps1`)
- PowerShell scripts can be run independently
- No additional dependencies required
- PowerShell script includes error handling for missing programs
- Simple, one-click batch or PowerShell execution
- No additional dependencies required

## Prerequisites
- Windows operating system
- Administrator privileges

## Usage
1. Download or clone this repository:
	```sh
	git clone https://github.com/0xC0FFEEBEEF/SCSD-Uninstall-Tool.git
	```
2. For FamilyZone MobileZoneAgent: Right-click `remove_connect.ps1` and select **Run with PowerShell as administrator**.
3. For School Manager - Authentication Agent: Right-click `remove_schoolmanager.ps1` and select **Run with PowerShell as administrator**.
4. Each script will attempt to uninstall its respective program. If a program or uninstaller is not found, it will continue without error.

### Example PowerShell Script Logic

```powershell
try {
	Get-WmiObject -Class Win32_Product -Filter "Name = 'School Manager - Authentication Agent'" | ForEach-Object { $_.Uninstall() }
} catch {
	Write-Host "School Manager - Authentication Agent uninstall failed or not found. Continuing..."
}

$uninstaller = "C:\\Program Files (x86)\\FamilyZone\\MobileZoneAgent\\uninstall.exe"
if (Test-Path $uninstaller) {
	try {
		Start-Process -FilePath $uninstaller -ArgumentList "--mode unattended" -Wait
	} catch {
		Write-Host "MobileZoneAgent uninstall failed. Continuing..."
	}
} else {
	Write-Host "MobileZoneAgent uninstaller not found. Continuing..."
}
```

## Disclaimer
Use this tool at your own risk. Ensure you have backups of any important data before running the script.



