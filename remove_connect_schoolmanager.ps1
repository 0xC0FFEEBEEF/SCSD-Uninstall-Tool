# Uninstall Connect
Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like "Connect*" } | ForEach-Object { $_.Uninstall() }

# Uninstall School Manager
Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like "School Manager*" } | ForEach-Object { $_.Uninstall() }