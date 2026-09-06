<#
.SYNOPSIS
    Resets an Active Directory user's password.

.DESCRIPTION
    Resets an Active Directory user's password and
    requires the user to change the password at next logon.

.PARAMETER Username
    Specifies the Active Directory username.

.EXAMPLE
    .\Reset-ADPassword.ps1 -Username jsmith

.NOTES
    Author: Joan Bonifacio
    Purpose: IT Service Desk / Active Directory support
    Use only by authorized IT administrators.
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$Username
)

Import-Module ActiveDirectory

$user = Get-ADUser $Username -ErrorAction SilentlyContinue

if ($user) {

    $newPassword = Read-Host "Enter temporary password" -AsSecureString

    Set-ADAccountPassword `
        -Identity $Username `
        -NewPassword $newPassword `
        -Reset

    Set-ADUser `
        -Identity $Username `
        -ChangePasswordAtLogon $true

    Write-Host "Password reset completed for: $Username"
    Write-Host "User will be required to change the password at next logon."

}
else {
    Write-Host "User not found: $Username"
}
