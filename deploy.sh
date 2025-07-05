#!/bin/bash

set -e  # Stop if any command fails

# Step 1: Build the site
echo "🔧 Building site..."
hugo

# Step 2: Go into the public directory
cd public

# Step 3: Commit and push changes
echo "🚀 Deploying to gh-pages..."
git add .
git commit -m "Deploy $(date '+%Y-%m-%d %H:%M:%S')" || echo "✅ Nothing new to commit"
git push origin gh-pages --force

# Step 5: Return to root
cd ..
echo "✅ Deploy complete!"
