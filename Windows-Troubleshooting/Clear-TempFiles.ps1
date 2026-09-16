<#
.SYNOPSIS
    Cleans common Windows temporary files.

.DESCRIPTION
    Removes files and folders from the current user's
    temporary directory that are no longer in use.

    The script reports the number of items found,
    successfully removed, and skipped due to access
    or file-locking issues.

.EXAMPLE
    .\Clear-TempFiles.ps1

    Scans the current user's temporary directory
    and removes available temporary files.

.NOTES
    Author: Joan Bonifacio
    Project: Windows Endpoint Troubleshooting Toolkit
    Purpose: Windows maintenance and troubleshooting

    This is a personal learning and portfolio project.
    Only the current user's TEMP directory is targeted.
#>

Write-Host "========================================="
Write-Host "       WINDOWS TEMP FILE CLEANUP"
Write-Host "========================================="

# Get the current user's temporary directory
$TempPath = $env:TEMP

Write-Host "`n[Target Directory]"
Write-Host "-----------------------------------------"
Write-Host $TempPath

# Verify that the TEMP directory exists
if (-not (Test-Path -Path $TempPath)) {
    Write-Host "`nTEMP directory was not found."
    exit
}

# Get items currently stored in the TEMP directory
$TempItems = Get-ChildItem -Path $TempPath -Force -ErrorAction SilentlyContinue

$totalItems = $TempItems.Count
$removedItems = 0
$skippedItems = 0

Write-Host "`n[Cleanup]"
Write-Host "-----------------------------------------"
Write-Host "Items found: $totalItems"

foreach ($item in $TempItems) {

    try {
        Remove-Item -LiteralPath $item.FullName `
            -Recurse `
            -Force `
            -ErrorAction Stop

        $removedItems++
    }
    catch {
        $skippedItems++
    }
}

Write-Host "`n[Cleanup Summary]"
Write-Host "-----------------------------------------"
Write-Host "Items found:   $totalItems"
Write-Host "Items removed: $removedItems"
Write-Host "Items skipped: $skippedItems"

Write-Host "`n========================================="
Write-Host "Temporary File Cleanup Complete."
Write-Host "========================================="
