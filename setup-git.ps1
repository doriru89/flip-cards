# Git Setup Script for Flip Cards Repository
# Run this script in PowerShell to connect to GitHub repository

$ErrorActionPreference = "Stop"

Write-Host "Setting up git repository connection..." -ForegroundColor Green

# Change to script directory
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

# Initialize git repository if not already initialized
if (-not (Test-Path .git)) {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
} else {
    Write-Host "Git repository already initialized." -ForegroundColor Yellow
}

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Host "Remote 'origin' already exists. Updating..." -ForegroundColor Yellow
    git remote set-url origin https://github.com/doriru89/flip-cards.git
} else {
    Write-Host "Adding remote 'origin'..." -ForegroundColor Yellow
    git remote add origin https://github.com/doriru89/flip-cards.git
}

# Add all files
Write-Host "Adding files to git..." -ForegroundColor Yellow
git add .

# Create initial commit
Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Flip cards app"

# Set main branch
Write-Host "Setting branch to main..." -ForegroundColor Yellow
git branch -M main

Write-Host "`nRepository setup complete!" -ForegroundColor Green
Write-Host "To push to GitHub, run: git push -u origin main" -ForegroundColor Cyan
Write-Host "You may need to authenticate with GitHub when pushing." -ForegroundColor Yellow

