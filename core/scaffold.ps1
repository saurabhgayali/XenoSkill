Write-Host "Creating project structure..." -ForegroundColor Cyan

$folders = @("info","status",".ai","exclude","builder")

foreach ($f in $folders) {
if (!(Test-Path $f)) {
New-Item -ItemType Directory -Path $f | Out-Null
}
}

Write-Host "XenoSkill structure ready." -ForegroundColor Green
Write-Host "Next: Open info/first_prompt.md and paste into your AI"
