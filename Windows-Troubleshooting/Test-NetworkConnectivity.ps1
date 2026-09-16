<#
.SYNOPSIS
    Performs basic network connectivity tests.

.DESCRIPTION
    Performs several network troubleshooting checks commonly
    used during initial IT Service Desk diagnostics.

    The script checks:
    - Active IPv4 network configuration
    - Internet connectivity using a public IP address
    - DNS name resolution
    - HTTPS connectivity over TCP port 443

.EXAMPLE
    .\Test-NetworkConnectivity.ps1

    Runs the basic network connectivity checks
    against the local Windows workstation.

.NOTES
    Author: Joan Bonifacio
    Project: Windows Endpoint Troubleshooting Toolkit
    Purpose: IT Service Desk network troubleshooting

    This is a personal learning and portfolio project.
#>

Write-Host "========================================="
Write-Host "       NETWORK CONNECTIVITY TEST"
Write-Host "========================================="

# --------------------------------------------------
# 1. Local Network Configuration
# --------------------------------------------------

Write-Host "`n[1] Local Network Configuration"
Write-Host "-----------------------------------------"

$networkConfig = Get-NetIPConfiguration |
    Where-Object {
        $_.IPv4Address -and
        $_.IPv4DefaultGateway
    }

if ($networkConfig) {

    foreach ($adapter in $networkConfig) {

        Write-Host "Interface:    $($adapter.InterfaceAlias)"
        Write-Host "IPv4 Address: $($adapter.IPv4Address.IPAddress)"
        Write-Host "Gateway:      $($adapter.IPv4DefaultGateway.NextHop)"
    }

}
else {

    Write-Host "No active IPv4 network configuration found."

}

# --------------------------------------------------
# 2. Internet Connectivity
# --------------------------------------------------

Write-Host "`n[2] Testing Internet Connectivity..."
Write-Host "-----------------------------------------"

$internetTest = Test-Connection 8.8.8.8 -Count 2 -Quiet

if ($internetTest) {
    Write-Host "Internet Connectivity: PASS"
}
else {
    Write-Host "Internet Connectivity: FAIL"
}

# --------------------------------------------------
# 3. DNS Resolution
# --------------------------------------------------

Write-Host "`n[3] Testing DNS Resolution..."
Write-Host "-----------------------------------------"

$dnsTest = Resolve-DnsName google.com -ErrorAction SilentlyContinue

if ($dnsTest) {
    Write-Host "DNS Resolution: PASS"
}
else {
    Write-Host "DNS Resolution: FAIL"
}

# --------------------------------------------------
# 4. HTTPS Connectivity
# --------------------------------------------------

Write-Host "`n[4] Testing HTTPS Connectivity..."
Write-Host "-----------------------------------------"

$httpsTest = Test-NetConnection google.com -Port 443 -InformationLevel Quiet

if ($httpsTest) {
    Write-Host "HTTPS Connectivity (Port 443): PASS"
}
else {
    Write-Host "HTTPS Connectivity (Port 443): FAIL"
}

# --------------------------------------------------
# Completion
# --------------------------------------------------

Write-Host "`n========================================="
Write-Host "Network Connectivity Test Complete."
Write-Host "========================================="
