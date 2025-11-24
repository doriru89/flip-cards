# Git Setup Instructions

If git commands are not working in the terminal, please follow these steps manually:

## Option 1: Using Git Bash or Command Prompt

1. Open Git Bash or Command Prompt
2. Navigate to the project directory:
   ```
   cd "C:\Users\aozuo\Desktop\Cursor\翻牌"
   ```

3. Initialize git repository:
   ```
   git init
   ```

4. Add all files:
   ```
   git add .
   ```

5. Create initial commit:
   ```
   git commit -m "Initial commit: Flip cards app"
   ```

6. Add remote repository:
   ```
   git remote add origin https://github.com/doriru89/flip-cards.git
   ```

7. Push to GitHub (you may need to authenticate):
   ```
   git branch -M main
   git push -u origin main
   ```

## Option 2: Using GitHub Desktop

1. Open GitHub Desktop
2. Click "File" > "Add Local Repository"
3. Select the project directory
4. Click "Publish repository" and select the `flip-cards` repository

## Option 3: Using VS Code / Cursor Source Control

1. Open the project in VS Code or Cursor
2. Click the Source Control icon in the sidebar
3. Initialize repository if prompted
4. Stage all changes
5. Commit with message "Initial commit: Flip cards app"
6. Publish branch to GitHub and select `doriru89/flip-cards`

## After Pushing to GitHub

Once the code is on GitHub, you can deploy to Render:

1. Go to [Render Dashboard](https://dashboard.render.com)
2. Click "New" > "Static Site"
3. Connect your GitHub account if not already connected
4. Select the `doriru89/flip-cards` repository
5. Render will automatically detect the static site configuration
6. Click "Create Static Site"
7. Your app will be deployed and you'll get a public URL

