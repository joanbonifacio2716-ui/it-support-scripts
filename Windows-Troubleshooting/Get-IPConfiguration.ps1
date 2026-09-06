<#
.SYNOPSIS
    Displays detailed network configuration.

.DESCRIPTION
    Retrieves network adapter, IP address, default gateway,
    and DNS configuration for troubleshooting.

.NOTES
    Author: Joan Bonifacio
    Purpose: IT Service Desk network troubleshooting
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
