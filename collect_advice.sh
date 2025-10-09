#!/usr/bin/env bash
# collect_advice.sh — Fetch random advice and append with timestamp

LOG_FILE="$HOME/cristian.rosario.advices"
DATETIME=$(date +"%Y-%m-%d %H:%M:%S")
ADVICE=$(curl -s https://api.adviceslip.com/advice | jq -r '.slip.advice')

if [ -n "$ADVICE" ]; then
  echo "$DATETIME - $ADVICE" >> "$LOG_FILE"
else
  echo "$DATETIME - [Error fetching advice]" >> "$LOG_FILE"
fi
