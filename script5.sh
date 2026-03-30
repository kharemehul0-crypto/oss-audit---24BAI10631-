#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Purpose: Take user input and generate a manifesto file

echo "Answer the following questions:"

# --- User Inputs ---
read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

# --- Date and file name ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Write content to file ---
echo "On $DATE, I believe in open source." > $OUTPUT
echo "I use $TOOL daily, especially VLC for media." >> $OUTPUT
echo "Freedom means $FREEDOM to me." >> $OUTPUT
echo "I want to build $BUILD and share it freely." >> $OUTPUT

# --- Display output ---
echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
