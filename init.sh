Clear-Host

$repoBase = "https://raw.githubusercontent.com/saurabhgayali/XenoSkill/master"

Write-Host "[1/3] Fetching XenoSkill templates..." -ForegroundColor Cyan
Write-Host ""

# Create folders
$folders = @("info","status",".ai","exclude","builder")
foreach ($f in $folders) {
    if (!(Test-Path $f)) {
        New-Item -ItemType Directory -Path $f | Out-Null
    }
}

# Download required files

function Get-File($url, $outPath) {
    try {
        Invoke-WebRequest $url -OutFile $outPath -UseBasicParsing
    } catch {
        Write-Host "Failed to fetch $url" -ForegroundColor Red
    }
}

# INFO FILES
Get-File "$repoBase/core/templates/info/theory.md" "info/theory.md"


# STATUS FILES
Get-File "$repoBase/core/templates/status/status.md" "status/status.md"
Get-File "$repoBase/core/templates/status/suggest.md" "status/suggest.md"

# AI RULES
New-Item -ItemType Directory -Path ".ai" -Force | Out-Null
Get-File "$repoBase/core/templates/.ai/AI_RULES.md" ".ai/AI_RULES.md"
Get-File "$repoBase/core/templates/.ai/INIT_PROMPT.md" ".ai/INIT_PROMPT.md"

# FINALIZE SCRIPTS
Get-File "$repoBase/core/templates/xenoskill-finalize.ps1" "xenoskill-finalize.ps1"

Write-Host "[2/3] Setting up workspace..." -ForegroundColor Yellow
Write-Host ""

# Optional files
Get-File "$repoBase/core/templates/.gitignore" ".gitignore"

Write-Host "[3/3] Finalizing..." -ForegroundColor Green
Write-Host ""

# ASCII
try {
    (Invoke-WebRequest "$repoBase/XenoSkill.txt" -UseBasicParsing).Content | ForEach-Object { Write-Host $_ }
} catch {
    Write-Host "[XenoSkill]" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "=====================================" -ForegroundColor Green
Write-Host "✔ XenoSkill Initialized" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Green
Write-Host ""

Write-Host "XenoSkill — A phase-gated SDLC layer for AI" -ForegroundColor Cyan
Write-Host ""

Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Open .ai/INIT_PROMPT.md"
Write-Host "2. Paste into your AI"
Write-Host "3. Let XenoSkill drive execution"
Write-Host ""
Write-Host "When done:" -ForegroundColor Yellow
Write-Host "Run xenoskill-finalize.ps1"
Write-Host ""