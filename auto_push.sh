#!/usr/bin/env bash
# auto_push.sh — Run advice script and push results to GitHub

cd /home/cristianrosario/cs1500advices_project || exit

# Run the advice collector
/home/cristianrosario/cs1500advices_project/collect_advice.sh

# Add timestamp
DATETIME=$(date +"%Y-%m-%d %H:%M:%S")

# Git commands
git add cristian.rosario.advices cron.log
git commit -m "Auto update: $DATETIME"
git push -u origin main

