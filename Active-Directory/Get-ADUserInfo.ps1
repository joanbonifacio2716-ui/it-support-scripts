<#
.SYNOPSIS
    Retrieves Active Directory user information.

.DESCRIPTION
    Retrieves common Active Directory user information
    useful for IT Service Desk troubleshooting.

.PARAMETER Username
    Specifies the AD username to query.

.EXAMPLE
    .\Get-ADUserInfo.ps1 -Username jsmith

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

Get-ADUser $Username -Properties DisplayName,
    Department,
    Title,
    EmailAddress,
    Enabled,
    LockedOut,
    LastLogonDate |
    Select-Object SamAccountName,
                  DisplayName,
                  Department,
                  Title,
                  EmailAddress,
                  Enabled,
                  LockedOut,
                  LastLogonDate
