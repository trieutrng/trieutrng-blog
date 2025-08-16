#!/bin/sh

echo "building..."
echo ""
hugo

# ---

echo ""
echo "deploying..."
echo ""

cd public

now=$(date +"%Y-%m-%d %H:%M:%S")
message="Deploy site changed - $now"

git add .
git commit -m "$message"
git push -u origin main

# ---
cd ..

echo ""
echo "committing..."
echo ""

git add .
git commit -m "$message"
git push -u origin main
