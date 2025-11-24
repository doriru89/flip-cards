@echo off
REM Git Setup Batch Script for Flip Cards Repository
REM Run this script to connect to GitHub repository

echo Setting up git repository connection...

cd /d "%~dp0"

REM Initialize git repository if not already initialized
if not exist .git (
    echo Initializing git repository...
    git init
)

REM Check if remote already exists and update/add it
git remote get-url origin >nul 2>&1
if %errorlevel% equ 0 (
    echo Remote 'origin' already exists. Updating...
    git remote set-url origin https://github.com/doriru89/flip-cards.git
) else (
    echo Adding remote 'origin'...
    git remote add origin https://github.com/doriru89/flip-cards.git
)

REM Add all files
echo Adding files to git...
git add .

REM Create initial commit
echo Creating initial commit...
git commit -m "Initial commit: Flip cards app"

REM Set main branch
echo Setting branch to main...
git branch -M main

echo.
echo Repository setup complete!
echo To push to GitHub, run: git push -u origin main
echo You may need to authenticate with GitHub when pushing.
pause

