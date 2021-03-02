#!/bin/sh
echo "Running system-preferences.sh..."

# Disabling OS X Gate Keeper
# (You'll be able to install any app you want from here on, not just Mac App Store apps)
sudo spctl --master-disable
sudo defaults write /var/db/SystemPolicy-prefs.plist enabled -string no
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Expanding the save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Setting trackpad & mouse speed to a reasonable number
defaults write -g com.apple.trackpad.scaling 2
defaults write -g com.apple.mouse.scaling 2.5

# Showing icons for hard drives, servers, and removable media on the desktop 
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Showing all filename extensions in Finder by default 
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#"Use column view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle Clmv

#"Enabling snap-to-grid for icons on the desktop and in other icon views"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

#"Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate"
defaults write com.apple.dock tilesize -int 36

#"Speeding up Mission Control animations and grouping windows by application"
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock "expose-group-by-app" -bool true

#"Setting screenshots location to ~/Desktop"
defaults write com.apple.screencapture location -string "$HOME/Desktop/Screenshots"

#"Setting screenshot format to PNG"
defaults write com.apple.screencapture type -string "png"



#"Check for software updates daily, not just once per week"
# defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

#"Disable smart quotes and smart dashes as they are annoying when typing code"
# defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
# defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

#"Enabling full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
# defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

#"Disabling press-and-hold for keys in favor of a key repeat"
# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

#"Enabling subpixel font rendering on non-Apple LCDs"
# defaults write NSGlobalDomain AppleFontSmoothing -int 2

#"Avoiding the creation of .DS_Store files on network volumes"
# defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

#"Allow hitting the Backspace key to go to the previous page in history"
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

#"Enabling the Develop menu and the Web Inspector in Safari"
# defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
# defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true

#"Adding a context menu item for showing the Web Inspector in web views"
# defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

#"Don't prompt for confirmation before downloading"
# defaults write org.m0k.transmission DownloadAsk -bool false
