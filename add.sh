#!/bin/bash
# Usage: ./add.sh title

title=$@
dateStr=`date +"%Y-%m-%d"`

if [ -z title ];then
read -p "What's post title ? " title
fi

filename="posts/$dateStr-$title.md"

echo "---" >> "$filename"
echo "title: $title" >> "$filename"
echo "date: $dateStr" >> "$filename"
echo "---" >> "$filename"

echo "Created $filename"