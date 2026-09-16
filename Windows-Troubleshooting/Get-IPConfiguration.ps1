```powershell
<#
.SYNOPSIS
    Displays basic network configuration.

.DESCRIPTION
    Retrieves useful network information for initial
    IT Service Desk troubleshooting.

    The script displays active network adapters,
    IPv4 addresses, default gateways, and DNS servers.

.EXAMPLE
    .\Get-IPConfiguration.ps1

    Displays the current network configuration
    of the local Windows workstation.

.NOTES
    Author: Joan Bonifacio
    Project: Windows Endpoint Troubleshooting Toolkit
    Purpose: IT Service Desk network troubleshooting

    This is a personal learning and portfolio project.
#>

Write-Host "========================================="
Write-Host "         IP CONFIGURATION"
Write-Host "========================================="

# Retrieve network configuration
# Only include adapters with both an IPv4 address
# and a default gateway.
$networkConfig = Get-NetIPConfiguration |
    Where-Object {
        $_.IPv4Address -and
        $_.IPv4DefaultGateway
    }

if ($networkConfig) {

    foreach ($adapter in $networkConfig) {

        Write-Host "`n[Network Adapter]"
        Write-Host "-----------------------------------------"

        Write-Host "Interface:    $($adapter.InterfaceAlias)"
        Write-Host "Description:  $($adapter.InterfaceDescription)"

        # IPv4 Address
        if ($adapter.IPv4Address) {
            Write-Host "IPv4 Address: $($adapter.IPv4Address.IPAddress)"
        }
        else {
            Write-Host "IPv4 Address: Not available"
        }

        # Default Gateway
        if ($adapter.IPv4DefaultGateway) {
            Write-Host "Gateway:      $($adapter.IPv4DefaultGateway.NextHop)"
        }
        else {
            Write-Host "Gateway:      Not available"
        }

        # DNS Servers
        if ($adapter.DNSServer.ServerAddresses) {
            Write-Host "DNS Server(s): $($adapter.DNSServer.ServerAddresses -join ', ')"
        }
        else {
            Write-Host "DNS Server(s): Not available"
        }
    }

}
else {

    Write-Host "`nNo active IPv4 network configuration found."

}

Write-Host "`n========================================="
Write-Host "Network Configuration Check Complete."
Write-Host "========================================="
```
