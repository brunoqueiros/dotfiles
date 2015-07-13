#!/bin/bash

# Turn off "Remote Search" so that search terms in Dash do not get sent over the internet
gsettings set com.canonical.Unity.Lenses remote-content-search "none"

# Set launcher favorites
gsettings set com.canonical.Unity.Launcher favorites "[
  'nautilus-home.desktop',
  'firefox.desktop',
  'firefox-developer.desktop',
  'google-chrome.desktop',
  'chromium-browser.desktop',
  'opera.desktop',
  'opera-beta.desktop',
  'eclipse.desktop',
  'sublime-text.desktop'
]"

# Hide bluetooth icon from the menu bar
gsettings set com.canonical.indicator.bluetooth visible false

# Hide battery icon from the menu bar when the battery is not in use
gsettings set com.canonical.indicator.power icon-policy "charge" && gsettings set com.canonical.indicator.power show-time false

