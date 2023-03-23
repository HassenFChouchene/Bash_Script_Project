#! /usr/bin/bash

echo "# Bash_Script_Project" >> README.md



git init
git add .
git commit -m "first commit"
git branch -M main
 

echo "Enter your Github website"

read var1

git remote add origin  $var1

git push -u origin main


