#!/bin/bash
set -e

# Script to push the last-working-config branch to GitHub

echo "Pushing last-working-config branch to origin..."
git push origin last-working-config

# Extract repository URL from git config
REPO_URL=$(git config --get remote.origin.url)
# Convert git URL to HTTPS web URL if needed
WEB_URL=$(echo "$REPO_URL" | sed -e 's/\.git$//' -e 's|git@github.com:|https://github.com/|')

echo "✅ Successfully pushed last-working-config branch to GitHub"
echo ""
echo "You can now view the branch at:"
echo "${WEB_URL}/tree/last-working-config"
