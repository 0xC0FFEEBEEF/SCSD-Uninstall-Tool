@echo off
REM Uninstall Connect
wmic product where "name like 'Connect%%'" call uninstall /nointeractive

REM Uninstall School Manager
wmic product where "name like 'School Manager%%'" call uninstall /nointeractive