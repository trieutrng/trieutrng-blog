#!/bin/sh

echo "building..."
hugo

# ---

echo "deploying..."
cd public

now=$(date +"%Y-%m-%d %H:%M:%S")
message="Deploy site changed - $today"

git add .
git commit -m "$message"
git push -u origin main

# ---
cd ..

echo "committing..."

git add .
git commit -m "$message"
git push -u origin main
