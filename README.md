# SCSD Uninstall Tool

This repository contains scripts (`remove_connect_schoolmanager.bat` and `remove_connect_schoolmanager.ps1`) designed to automate the uninstallation of Connect, School Manager (including Authentication Agent), and FamilyZone MobileZoneAgent from Windows systems.

## Features
- Removes Connect, School Manager (including Authentication Agent), and FamilyZone MobileZoneAgent
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
2. For batch script: Right-click `remove_connect_schoolmanager.bat` and select **Run as administrator**.
3. For PowerShell script: Right-click `remove_connect_schoolmanager.ps1` and select **Run with PowerShell as administrator**.
4. The script will attempt to uninstall the listed programs. If a program is not found, it will continue without error.

## Disclaimer
Use this tool at your own risk. Ensure you have backups of any important data before running the script.



