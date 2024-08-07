#!/usr/bin/env bash
#
# Syncing all the settings, keybindings, and profiles from local to the repo
profiles="Default DevOps"

echo "Copying keybindings..."
cp ~/Library/Application\ Support/Code/User/keybindings.json .
echo "Copying settings..."
cp ~/Library/Application\ Support/Code/User/settings.json .

for profile in $profiles; do
  echo "Copying profile: $profile..."
  code --list-extensions --show-versions --profile $profile > profiles/$profile.txt
done

echo "Done!"
