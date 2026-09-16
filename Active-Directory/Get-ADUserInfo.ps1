```powershell
<#
.SYNOPSIS
    Retrieves basic Active Directory user information.

.DESCRIPTION
    Queries an Active Directory user account and displays
    commonly required information for IT Service Desk
    and Tier 2 account troubleshooting.

    The script retrieves:
    - Display name
    - Username
    - User Principal Name
    - Email address
    - Department
    - Job title
    - Account enabled status
    - Account lockout status
    - Password expiration status
    - Password last set date
    - Last logon date

.PARAMETER Username
    Specifies the Active Directory username to query.

.EXAMPLE
    .\Get-ADUserInfo.ps1 -Username jsmith

    Retrieves information for the Active Directory user "jsmith".

.NOTES
    Author: Joan Bonifacio
    Project: Active Directory Support Toolkit
    Purpose: IT Service Desk account troubleshooting

    This is a personal learning and portfolio project.
    Requires the ActiveDirectory PowerShell module
    and appropriate permissions to query Active Directory.

    This script is read-only and does not modify user accounts.
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$Username
)

Write-Host "========================================="
Write-Host "       ACTIVE DIRECTORY USER INFO"
Write-Host "========================================="

# Verify that the Active Directory module is available
try {
    Import-Module ActiveDirectory -ErrorAction Stop
}
catch {
    Write-Host "`nERROR: ActiveDirectory PowerShell module is not available."
    Write-Host "Install or enable the module before running this script."
    Write-Host "Details: $($_.Exception.Message)"
    exit 1
}

# Query the Active Directory user
try {

    $User = Get-ADUser -Identity $Username `
        -Properties @(
            "DisplayName",
            "UserPrincipalName",
            "EmailAddress",
            "Department",
            "Title",
            "Enabled",
            "LockedOut",
            "PasswordExpired",
            "PasswordNeverExpires",
            "PasswordLastSet",
            "LastLogonDate"
        ) `
        -ErrorAction Stop

}
catch {

    Write-Host "`nERROR: Unable to retrieve the Active Directory user."
    Write-Host "Username: $Username"
    Write-Host "Details:  $($_.Exception.Message)"
    exit 1
}

Write-Host "`n[User Information]"
Write-Host "-----------------------------------------"
Write-Host "Display Name:      $($User.DisplayName)"
Write-Host "Username:          $($User.SamAccountName)"
Write-Host "User Principal:    $($User.UserPrincipalName)"
Write-Host "Email:             $($User.EmailAddress)"
Write-Host "Department:        $($User.Department)"
Write-Host "Job Title:         $($User.Title)"

Write-Host "`n[Account Status]"
Write-Host "-----------------------------------------"
Write-Host "Enabled:           $($User.Enabled)"
Write-Host "Locked Out:        $($User.LockedOut)"
Write-Host "Password Expired:  $($User.PasswordExpired)"
Write-Host "Password Never Expires: $($User.PasswordNeverExpires)"

Write-Host "`n[Password Information]"
Write-Host "-----------------------------------------"

if ($User.PasswordLastSet) {
    Write-Host "Password Last Set: $($User.PasswordLastSet)"
}
else {
    Write-Host "Password Last Set: Not available"
}

Write-Host "`n[Last Logon]"
Write-Host "-----------------------------------------"

if ($User.LastLogonDate) {
    Write-Host "Last Logon:        $($User.LastLogonDate)"
}
else {
    Write-Host "Last Logon:        No information available"
}

Write-Host "`n========================================="
Write-Host "Active Directory Query Complete."
Write-Host "========================================="
```
```powershell
<#
.SYNOPSIS
    Retrieves basic Active Directory user information.

.DESCRIPTION
    Queries an Active Directory user account and displays
    commonly required information for IT Service Desk
    and Tier 2 account troubleshooting.

    The script retrieves:
    - Display name
    - Username
    - User Principal Name
    - Email address
    - Department
    - Job title
    - Account enabled status
    - Account lockout status
    - Password expiration status
    - Password last set date
    - Last logon date

.PARAMETER Username
    Specifies the Active Directory username to query.

.EXAMPLE
    .\Get-ADUserInfo.ps1 -Username jsmith

    Retrieves information for the Active Directory user "jsmith".

.NOTES
    Author: Joan Bonifacio
    Project: Active Directory Support Toolkit
    Purpose: IT Service Desk account troubleshooting

    This is a personal learning and portfolio project.
    Requires the ActiveDirectory PowerShell module
    and appropriate permissions to query Active Directory.

    This script is read-only and does not modify user accounts.
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$Username
)

Write-Host "========================================="
Write-Host "       ACTIVE DIRECTORY USER INFO"
Write-Host "========================================="

# Verify that the Active Directory module is available
try {
    Import-Module ActiveDirectory -ErrorAction Stop
}
catch {
    Write-Host "`nERROR: ActiveDirectory PowerShell module is not available."
    Write-Host "Install or enable the module before running this script."
    Write-Host "Details: $($_.Exception.Message)"
    exit 1
}

# Query the Active Directory user
try {

    $User = Get-ADUser -Identity $Username `
        -Properties @(
            "DisplayName",
            "UserPrincipalName",
            "EmailAddress",
            "Department",
            "Title",
            "Enabled",
            "LockedOut",
            "PasswordExpired",
            "PasswordNeverExpires",
            "PasswordLastSet",
            "LastLogonDate"
        ) `
        -ErrorAction Stop

}
catch {

    Write-Host "`nERROR: Unable to retrieve the Active Directory user."
    Write-Host "Username: $Username"
    Write-Host "Details:  $($_.Exception.Message)"
    exit 1
}

Write-Host "`n[User Information]"
Write-Host "-----------------------------------------"
Write-Host "Display Name:      $($User.DisplayName)"
Write-Host "Username:          $($User.SamAccountName)"
Write-Host "User Principal:    $($User.UserPrincipalName)"
Write-Host "Email:             $($User.EmailAddress)"
Write-Host "Department:        $($User.Department)"
Write-Host "Job Title:         $($User.Title)"

Write-Host "`n[Account Status]"
Write-Host "-----------------------------------------"
Write-Host "Enabled:           $($User.Enabled)"
Write-Host "Locked Out:        $($User.LockedOut)"
Write-Host "Password Expired:  $($User.PasswordExpired)"
Write-Host "Password Never Expires: $($User.PasswordNeverExpires)"

Write-Host "`n[Password Information]"
Write-Host "-----------------------------------------"

if ($User.PasswordLastSet) {
    Write-Host "Password Last Set: $($User.PasswordLastSet)"
}
else {
    Write-Host "Password Last Set: Not available"
}

Write-Host "`n[Last Logon]"
Write-Host "-----------------------------------------"

if ($User.LastLogonDate) {
    Write-Host "Last Logon:        $($User.LastLogonDate)"
}
else {
    Write-Host "Last Logon:        No information available"
}

Write-Host "`n========================================="
Write-Host "Active Directory Query Complete."
Write-Host "========================================="
```
