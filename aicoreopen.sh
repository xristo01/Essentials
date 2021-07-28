#!/bin/bash
cd /Users/hristopetkov/Documents/AiCore/Eta-Cohort/Essentials
git checkout main
git pull https://github.com/life-efficient/Essentials
git commit -m “Pull changes from original essenstials”
git push 
echo “please enter a branch name: ”
read branchname 
git branch $branchname 
git checkout $branchname
eval "$(conda shell.zsh hook)"
conda activate AiCore
jupyter notebook
git add .
echo “enter commit message : ”
read commitmsg
git commit -m “$commitmsg”
git push origin $branchname
cd $HOME