#!/bin/bash
cd /Users/hristopetkov/Documents/AiCore/Eta-Cohort/Essentials
git checkout main
git pull https://github.com/life-efficient/Essentials
git commit -m “Pull changes from original essenstials”
git push 
echo “please enter a branch name: ”
read branch name 
git branch $branchname 
git checkout 
conda activate AiCore
jupyter notebook
git add .
echo “enter commit message : ”
read commitmsg
Git commit -m “$commitmsg”
branch =$(git symbolic-ref —-short HEAD)
git push origin branch
$SHELL