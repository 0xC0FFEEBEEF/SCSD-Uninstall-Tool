# Uninstall School Manager - Authentication Agent
try {
    Get-WmiObject -Class Win32_Product -Filter "Name = 'School Manager - Authentication Agent'" | ForEach-Object { $_.Uninstall() }
} catch {
    Write-Host "School Manager - Authentication Agent uninstall failed or not found. Continuing..."
}

# Uninstall FamilyZone MobileZoneAgent if present
$uninstaller = "C:\Program Files (x86)\FamilyZone\MobileZoneAgent\uninstall.exe"
if (Test-Path $uninstaller) {
    try {
        Start-Process -FilePath $uninstaller -ArgumentList "--mode unattended" -Wait
    } catch {
        Write-Host "MobileZoneAgent uninstall failed. Continuing..."
    }
} else {
    Write-Host "MobileZoneAgent uninstaller not found. Continuing..."
}