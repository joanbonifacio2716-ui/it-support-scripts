<#
.SYNOPSIS
    Collects basic Windows system information.

.DESCRIPTION
    Retrieves useful workstation information commonly needed
    during initial IT Service Desk troubleshooting.

    The script collects computer name, operating system,
    manufacturer and model, processor, installed RAM,
    and basic network configuration.

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

# Computer Name
Write-Host "`n[Computer Name]"
Write-Host "-----------------------------------------"
Write-Host $env:COMPUTERNAME

# Operating System
Write-Host "`n[Operating System]"
Write-Host "-----------------------------------------"

$os = Get-CimInstance Win32_OperatingSystem

Write-Host "Name:         $($os.Caption)"
Write-Host "Version:      $($os.Version)"
Write-Host "Architecture: $($os.OSArchitecture)"

# Manufacturer and Model
Write-Host "`n[System Manufacturer and Model]"
Write-Host "-----------------------------------------"

$computer = Get-CimInstance Win32_ComputerSystem

Write-Host "Manufacturer: $($computer.Manufacturer)"
Write-Host "Model:        $($computer.Model)"

# Processor
Write-Host "`n[Processor]"
Write-Host "-----------------------------------------"

$processor = Get-CimInstance Win32_Processor

Write-Host "Processor:    $($processor.Name)"

# Total RAM
Write-Host "`n[Total RAM]"
Write-Host "-----------------------------------------"

$ramGB = $computer.TotalPhysicalMemory / 1GB

Write-Host ("Installed RAM: {0:N2} GB" -f $ramGB)

# IP Configuration
Write-Host "`n[IP Configuration]"
Write-Host "-----------------------------------------"

$network = Get-NetIPConfiguration |
    Where-Object {
        $_.IPv4Address -and
        $_.IPv4DefaultGateway
    }

if ($network) {

    foreach ($adapter in $network) {

        Write-Host "Interface:    $($adapter.InterfaceAlias)"
        Write-Host "IPv4 Address: $($adapter.IPv4Address.IPAddress)"
        Write-Host "Gateway:      $($adapter.IPv4DefaultGateway.NextHop)"
        Write-Host ""
    }

}
else {

    Write-Host "No active IPv4 network configuration found."

}

Write-Host "========================================="
Write-Host "System Information Collection Complete."
Write-Host "========================================="
