#!/bin/bash

# Add symlink
ln -s '~/.dotfiles/macos/com.local.KeyRemapping.plist' '~/Library/LaunchAgents/com.local.KeyRemapping.plist' 

# Make sure the config is unloaded first
launchctl unload ~/Library/LaunchAgents/com.local.KeyRemapping.plist

# Then load the config
launchctl load ~/Library/LaunchAgents/com.local.KeyRemapping.plist

# Check that the config was loaded
launchctl list | grep local

# Start the remapping on system startup
launchctl start com.local.KeyRemapping.plist
