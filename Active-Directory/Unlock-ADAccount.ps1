<#
.SYNOPSIS
    Unlocks a locked Active Directory account.

.DESCRIPTION
    Unlocks an Active Directory user account after
    verifying that the user exists.

.PARAMETER Username
    Specifies the Active Directory username.

.EXAMPLE
    .\Unlock-ADAccount.ps1 -Username jsmith

.NOTES
    Author: Joan Bonifacio
    Purpose: IT Service Desk / Active Directory troubleshooting
    Use only in authorized Active Directory environments.
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Import-Module ActiveDirectory

$user = Get-ADUser $Username -ErrorAction SilentlyContinue

if ($user) {

    if ($user.LockedOut) {
        Unlock-ADAccount -Identity $Username
        Write-Host "Account unlocked successfully: $Username"
    }
    else {
        Write-Host "Account is not currently locked: $Username"
    }

}
else {
    Write-Host "User not found: $Username"
}
