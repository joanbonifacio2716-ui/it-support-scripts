<#
.SYNOPSIS
    Collects basic Windows system information.

.DESCRIPTION
    Retrieves useful workstation information commonly needed
    during initial IT Service Desk troubleshooting.

    The script collects computer name, operating system,
    manufacturer and model, processor, installed RAM,
    and basic IP configuration.

.EXAMPLE
    .\Get-SystemInfo.ps1

    Collects basic Windows, hardware, and network information
    from the local workstation.

.NOTES
    Author: Joan Bonifacio
    Project: Windows Endpoint Troubleshooting Toolkit
    Purpose: Initial endpoint diagnostics for IT Service Desk support

    This is a personal learning and portfolio project.
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
