#! /usr/bin/bash

# File Organization Script

# Create directories for different file types
echo "Creating directories..."
mkdir -p images documents videos music other

# Move files to their respective directories
echo "Organizing files..."
for file in *
do
  if [ -f "$file" ]; then
    case "$file" in
      *.jpg|*.jpeg|*.png|*.gif)
        mv "$file" images/
        ;;
      *.pdf|*.doc|*.docx|*.txt)
        mv "$file" documents/
        ;;
      *.mp4|*.avi|*.mkv|*.mov)
        mv "$file" videos/
        ;;
      *.mp3|*.wav|*.flac|*.aac)
        mv "$file" music/
        ;;
      *)
        mv "$file" other/
        ;;
    esac
  fi
done

echo "Done!"
