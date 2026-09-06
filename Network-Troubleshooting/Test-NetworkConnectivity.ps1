<#
.SYNOPSIS
    Performs basic network connectivity tests.

.DESCRIPTION
    Tests connectivity to the local gateway,
    public DNS, and a public website.

.NOTES
    Author: Joan Bonifacio
    Purpose: IT Service Desk network troubleshooting
#>

Write-Host "========================================="
Write-Host "       NETWORK CONNECTIVITY TEST"
Write-Host "========================================="

Write-Host "`n[1] Local Network Configuration"
Get-NetIPConfiguration |
    Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway

Write-Host "`n[2] Testing Google DNS..."
Test-Connection 8.8.8.8 -Count 2

Write-Host "`n[3] Testing DNS Resolution..."
Resolve-DnsName google.com -ErrorAction SilentlyContinue

Write-Host "`n[4] Testing HTTPS Connectivity..."
Test-NetConnection google.com -Port 443

Write-Host "`nNetwork troubleshooting test completed."
