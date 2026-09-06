<#
.SYNOPSIS
    Cleans common Windows temporary files.

.DESCRIPTION
    Removes temporary files from the current user's
    Temp directory that are no longer in use.

.NOTES
    Author: Joan Bonifacio
    Purpose: Windows maintenance and troubleshooting
#>

Write-Host "========================================="
Write-Host "       WINDOWS TEMP FILE CLEANUP"
Write-Host "========================================="

$TempPath = $env:TEMP

Write-Host "`nCleaning:"
Write-Host $TempPath

Get-ChildItem -Path $TempPath -Force -ErrorAction SilentlyContinue |
    Remove-Item -Recurse -Force -ErrorAction SilentlyContinue

Write-Host "`nTemporary file cleanup completed."
