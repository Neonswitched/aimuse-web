#!/bin/bash
# Deploy AIMUSE website to GitHub Pages

echo "🚀 AIMUSE Website Deployment"
echo "=============================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    echo "✓ Git initialized"
fi

# Add all files
echo "📝 Adding files..."
git add .

# Commit
echo "💾 Committing files..."
git commit -m "Initial commit - AIMUSE website with Terms and Privacy"

# Prompt for GitHub username
echo ""
echo "❓ What is your GitHub username?"
read github_username

# Add remote
echo "🔗 Setting up remote..."
git branch -M main
git remote add origin "https://github.com/$github_username/aimuse-web.git"

echo ""
echo "✅ Setup complete!"
echo ""
echo "📋 NEXT STEPS:"
echo "1. Create the repository on GitHub:"
echo "   Go to: https://github.com/new"
echo "   Repository name: aimuse-web"
echo "   Make it PUBLIC"
echo "   Don't add README, gitignore, or license"
echo "   Click 'Create repository'"
echo ""
echo "2. Then run: git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   Settings → Pages → Branch: main → Save"
echo ""
echo "4. Your URLs will be:"
echo "   https://$github_username.github.io/aimuse-web/"
echo "   https://$github_username.github.io/aimuse-web/terms.html"
echo "   https://$github_username.github.io/aimuse-web/privacy.html"

