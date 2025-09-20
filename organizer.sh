#!/bin/bash

TARGET_DIR=${1:-$/home/ubuntu/Desktop}

echo "Organizing files in: $TARGET_DIR"

mkdir -p "$TARGET_DIR/Documents" "$TARGET_DIR/Images" "$TARGET_DIR/Scripts" "$TARGET_DIR/Others"

for file in "$TARGET_DIR"/*; do
	if [[ -f "$file" ]]; then
		case "${file,,}" in
			*.jpg|*.jpeg|*.png|*.gif) mv "$file" "$TARGET_DIR/Images/";;
			*.pdf|*.docx|*.txt) mv "$file" "$TARGET_DIR/Documents/";;
			*.sh|*.py|*.c|*.cpp|*.java) mv "$file" "$TARGET_DIR/Scripts/";;
			*) mv "$file" "$TARGET_DIR/Others/";;
		esac
	fi
done

echo "Files organized successfully!"
