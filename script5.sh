#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Naina Yadav

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in using tools like $TOOL to empower innovation." >> $OUTPUT
echo "To me, freedom means $FREEDOM, and it drives me to create." >> $OUTPUT
echo "One day, I want to build $BUILD and share it with the world." >> $OUTPUT
echo "Open source is not just code — it is a philosophy of collaboration." >> $OUTPUT

echo ""
echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
