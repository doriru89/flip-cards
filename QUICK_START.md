# Quick Start: Connect to GitHub

Your git repository has been configured with the remote connection to `https://github.com/doriru89/flip-cards`.

## Next Steps

### Option 1: Using Cursor's Built-in Git (Recommended)

1. Open the Source Control panel in Cursor (click the Git icon in the sidebar or press `Ctrl+Shift+G`)
2. If you see a message to "Initialize Repository", click "Yes" (or it may auto-detect the existing .git folder)
3. Click the "+" icon to stage all files
4. Enter commit message: "Initial commit: Flip cards app"
5. Click the checkmark to commit
6. Click the "..." menu (three dots) and select "Push" or "Publish Branch"
7. Select the remote: `origin` and branch: `main`
8. Authenticate with GitHub if prompted

### Option 2: Run the Setup Script

Double-click `setup-git.bat` (Windows) or run `setup-git.ps1` in PowerShell, then:
```
git push -u origin main
```

### Option 3: Manual Git Commands

Open Command Prompt or Git Bash and run:
```bash
cd "C:\Users\aozuo\Desktop\Cursor\翻牌"
git add .
git commit -m "Initial commit: Flip cards app"
git branch -M main
git push -u origin main
```

## Files Ready to Push

- ✅ index.html - Main flip cards application
- ✅ README.md - Project documentation  
- ✅ render.yaml - Render deployment configuration
- ✅ .gitignore - Git ignore rules
- ✅ .git/config - Already configured with remote origin

After pushing, you can deploy to Render following the instructions in README.md!

