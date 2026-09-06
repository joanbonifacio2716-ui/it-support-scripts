<#
.SYNOPSIS
    Collects basic Windows system information.

.DESCRIPTION
    Retrieves useful workstation information commonly needed
    during IT Service Desk troubleshooting.

.NOTES
    Author: Joan Bonifacio
    Purpose: IT Service Desk / Help Desk troubleshooting
#>

Write-Host "========================================="
Write-Host "       WINDOWS SYSTEM INFORMATION"
Write-Host "========================================="

Write-Host "`nComputer Name:"
$env:COMPUTERNAME

Write-Host "`nOperating System:"
Get-CimInstance Win32_OperatingSystem |
    Select-Object Caption, Version, OSArchitecture

Write-Host "`nSystem Manufacturer and Model:"
Get-CimInstance Win32_ComputerSystem |
    Select-Object Manufacturer, Model

Write-Host "`nProcessor:"
Get-CimInstance Win32_Processor |
    Select-Object -ExpandProperty Name

Write-Host "`nTotal RAM:"
$ram = Get-CimInstance Win32_ComputerSystem
"{0:N2} GB" -f ($ram.TotalPhysicalMemory / 1GB)

Write-Host "`nIP Configuration:"
Get-NetIPConfiguration |
    Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway

Write-Host "`nSystem Information Collection Complete."
