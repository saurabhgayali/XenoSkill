# Set encoding to UTF8 to prevent "âœ" style artifacts
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Clear-Host

# Resolve paths
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$templateDir = Join-Path $scriptDir "core\templates"
$asciiFile = Join-Path $scriptDir "XenoSkill.txt"

# Step 1
Write-Host "[1/3] Copying XenoSkill templates..." -ForegroundColor Cyan
Write-Host ""

if (Test-Path $templateDir) {
    # Copy normal files
    Copy-Item "$templateDir\*" -Destination . -Recurse -Force -ErrorAction SilentlyContinue
    # Copy hidden files (.ai, .gitignore)
    Copy-Item "$templateDir\.*" -Destination . -Recurse -Force -ErrorAction SilentlyContinue
}

# Step 2
Write-Host "[2/3] Setting up workspace..." -ForegroundColor Yellow
Write-Host ""

$folders = @("info","status",".ai","exclude","builder")
foreach ($f in $folders) {
    if (!(Test-Path $f)) {
        New-Item -ItemType Directory -Path $f | Out-Null
    }
}

# Step 3
Write-Host "[3/3] Finalizing..." -ForegroundColor Green
Write-Host ""

# ASCII output (safe)
if (Test-Path $asciiFile) {
    Get-Content $asciiFile | ForEach-Object { Write-Host $_ }
} else {
    Write-Host "[XenoSkill]" -ForegroundColor Cyan
}

# Final message
Write-Host ""
Write-Host "=====================================" -ForegroundColor Green
Write-Host "V XenoSkill Initialized" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Green
Write-Host ""

Write-Host "XenoSkill -- A phase-gated SDLC layer for AI" -ForegroundColor Cyan
Write-Host ""

Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Open info/INIT_PROMPT.md"
Write-Host "2. Paste into your AI"
Write-Host "3. Let XenoSkill drive execution"
Write-Host "When done:"
Write-Host "Run xenoskill-finalize to prepare your project for delivery"
Write-Host ""