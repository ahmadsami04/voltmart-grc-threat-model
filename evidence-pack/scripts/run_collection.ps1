
# VoltMart Electronics - Synthetic evidence collection runner
# Creates a fresh output directory before each collection.

$ErrorActionPreference = "Stop"

$BaseDir = Split-Path -Parent $PSScriptRoot
$OutputDir = Join-Path $BaseDir "sample-output"
$BashPath = "C:\Program Files\Git\bin\bash.exe"

if (-not (Test-Path $BashPath)) {
    Write-Error "Git Bash executable not found."
    exit 1
}

if (-not (Get-Command py -ErrorAction SilentlyContinue)) {
    Write-Error "Python launcher not found."
    exit 1
}

# Remove only the generated sample-output directory.
if (Test-Path $OutputDir) {
    Remove-Item $OutputDir -Recurse -Force
}

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

Write-Host "Starting VoltMart synthetic evidence collection..."

& py (Join-Path $PSScriptRoot "collect_logs.py")
$PythonExit = $LASTEXITCODE

& $BashPath (Join-Path $PSScriptRoot "collect_system.sh")
$BashExit = $LASTEXITCODE

if ($PythonExit -ne 0 -or $BashExit -ne 0) {
    Write-Host "[ERROR] Evidence collection incomplete."
    exit 1
}

Write-Host "[OK] Evidence collection completed successfully."
exit 0
