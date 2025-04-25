#!/bin/bash
: <<'COMMENT'
Author: TK
Date: 2025-04-25
Version: v1
Description: Creating mastering-linux project structure and pushing to GitHub
COMMENT

# === Configuration ===
GITHUB_REPO_URL="git@github.com:Tks-Devops/mastering-linux.git"  # Use SSH for seamless push

# === Step 1: Create folder structure ===
mkdir -p mastering-linux/{01_fundamentals/examples,02_folder_structure/examples,03_user_management/examples,04_permissions/examples,05_process_management/examples,06_networking/examples,07_shell_scripting/scripts}
cd mastering-linux || exit

# === Step 2: Create base files ===
touch LICENSE README.md .gitignore

# === Step 3: Add .gitignore content ===
cat <<EOL > .gitignore
# OS-specific files
.DS_Store
Thumbs.db

# Editor and IDE settings
.vscode/
.idea/
*.sublime-workspace
*.sublime-project

# Log files
*.log

# Swap and temp files
*.swp
*.tmp
*.bak
*~

# Python virtual environments (if you use any)
venv/
env/

# Compiled Python files
__pycache__/
*.py[cod]

# Shell history and credentials (just in case)
*.sh~
*.secret
*.env
*.pem
*.key

# Git ignore rules for test outputs
test-output/
coverage/
EOL

# === Step 4: Initialize Git repo ===
if [ -d .git ]; then
  echo "🔁 Git repo already initialized."
else
  git init
  echo "✅ Git initialized."
fi

# === Step 5: Add remote origin safely ===
if git remote | grep -q origin; then
  echo "🔗 Remote 'origin' already exists."
else
  git remote add origin "$GITHUB_REPO_URL"
  echo "✅ Remote 'origin' added."
fi

# === Step 6: Git commit and push ===
git add .
git commit -m "Initial project structure"

# Try pulling master only if it exists
if git ls-remote --exit-code --heads origin master &> /dev/null; then
  git pull origin master --rebase
else
  echo "⚠️  No master branch on remote yet."
fi

git push -u origin master

