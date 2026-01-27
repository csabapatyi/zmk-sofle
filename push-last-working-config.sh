#!/bin/bash

# Script to push the last-working-config branch to GitHub

echo "Pushing last-working-config branch to origin..."
git push origin last-working-config

if [ $? -eq 0 ]; then
    echo "✅ Successfully pushed last-working-config branch to GitHub"
    echo ""
    echo "You can now view the branch at:"
    echo "https://github.com/csabapatyi/zmk-sofle/tree/last-working-config"
else
    echo "❌ Failed to push branch. Please check your git credentials."
    exit 1
fi
