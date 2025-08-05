#!/bin/bash
PROFILE=$(grep -E '^\[Profile|^Name|^Path' ~/Library/Application\ Support/zen/profiles.ini \
  | grep -A2 '^Name=Default' | grep '^Path=' | cut -d= -f2)

echo $PROFILE
ln -s ~/dots/apps/zen/hardenedprof/* ~/Library/Application\ Support/zen/$PROFILE

ln -s ~/dots/apps/zen/enterprise_policy/* /Applications/Zen.app/Contents/Resources 

