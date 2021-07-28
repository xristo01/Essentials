#!/bin/bash

cd  /Users/hristopetkov/Desktop/Eta-Cohort/Essentials

git checkout main

git pull https://github.com/life-efficient/Essentials

git commit -m “pull changes from original essenstials”

git push 

echo “please enter a branch name: ”

read branch name 

git branch $branchname 

git checkout 

$SHELL