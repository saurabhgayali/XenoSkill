# Define the checkmark character using a hex code compatible with all versions
$check = [char]0x2714

# Set encoding to UTF8 to prevent "âœ" style artifacts
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Clear-Host

Write-Host "Finalizing XenoSkill project..." -ForegroundColor Cyan

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$archiveDir = "xeno_archive\$timestamp"

# Ensure archive directory exists
if (!(Test-Path $archiveDir)) {
    New-Item -ItemType Directory -Path $archiveDir -Force | Out-Null
}

# Archive folders
$foldersToArchive = @("status", ".ai")
foreach ($folder in $foldersToArchive) {
    if (Test-Path $folder) {
        Copy-Item $folder -Destination $archiveDir -Recurse -Force
    }
}

# Specific file backup if it exists
if (Test-Path "status\suggest.md") {
    Copy-Item "status\suggest.md" -Destination $archiveDir -Force
}

Write-Host "Archive created at $archiveDir" -ForegroundColor Yellow

# Cleanup - Remove archived layers
Remove-Item -Recurse -Force status, .ai -ErrorAction SilentlyContinue

# Final Output using Unicode escape for the checkmark
Write-Host ""
Write-Host "$check Project finalized" -ForegroundColor Green
Write-Host "$check AI layers archived" -ForegroundColor Green
Write-Host ""
Write-Host "Remaining:" -ForegroundColor Cyan
Write-Host "- src/ (your code)"
Write-Host "- info/ (documentation)"
Write-Host ""