#!/bin/bash

# YouTube Music Playlist URLs for different moods
declare -A playlists
playlists["happy"]="https://music.youtube.com/playlist?list=RDCLAK5uy_lV2nSIwNU8070lncN33m1P_VbWwkGKxzE"  # Example Happy Playlist
playlists["sad"]="https://music.youtube.com/playlist?list=RDTMAK5uy_mZvWCHQ-KwmUM_ZMeZNRF93nKrLafqFp0"    # Example Sad Playlist
playlists["chill"]="https://music.youtube.com/playlist?list=RDTMAK5uy_nzfwl2UYv7htL7wDoxbX8Pp6UAFBd92cQ"  # Example Chill Playlist

# Ask the user for their mood
echo "How are you feeling? (happy, sad, chill)"
read mood

# Convert input to lowercase
mood=$(echo "$mood" | tr '[:upper:]' '[:lower:]')

# Check if the mood exists in playlists
if [[ -n "${playlists[$mood]}" ]]; then
    echo "Opening the '$mood' playlist on YouTube Music..."
    open "${playlists[$mood]}"  # For macOS
    # xdg-open "${playlists[$mood]}"  # Use this on Linux
else
    echo "Mood not recognized. Please choose: happy, sad, chill."
fi