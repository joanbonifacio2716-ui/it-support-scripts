<#
.SYNOPSIS
    Displays detailed network configuration.

.NOTES
    Author: Joan Bonifacio
    Purpose: IT Service Desk troubleshooting
#>

Write-Host "========================================="
Write-Host "         IP CONFIGURATION"
Write-Host "========================================="

Get-NetIPConfiguration |
    Format-List InterfaceAlias,
                InterfaceDescription,
                IPv4Address,
                IPv4DefaultGateway,
                DNSServer
