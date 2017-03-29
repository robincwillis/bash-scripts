#!/bin/bash
echo '
 ________          _________  ________           _____  ________  ________
|\   __  \        |\___   ___\\   __  \         / __  \|\   __  \|\   __  \
\ \  \|\  \       \|___ \  \_\ \  \|\  \       |\/_|\  \ \  \|\  \ \  \|\  \
 \ \  \\\  \           \ \  \ \ \  \\\  \      \|/ \ \  \ \  \\\  \ \  \\\  \
  \ \  \\\  \           \ \  \ \ \  \\\  \          \ \  \ \  \\\  \ \  \\\  \
   \ \_______\           \ \__\ \ \_______\          \ \__\ \_______\ \_______\
    \|_______|            \|__|  \|_______|           \|__|\|_______|\|_______|
'

##############################

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
OK="💊 "
BUILD="📐 "
HUNDO="💯 "
T_UP="👍 "
T_DOWN="👎 "
SLEEP="💤 "
BURN="🚬 "
FUCK="💣 "

function go {
    "$@"
    local status=$?
    if [ $status -ne 0 ]; then
        echo $FUCK" $1" >&2
        exit
    fi
    return $status
}

##############################

### PROFILE
echo $OK" Adding .bash_profile and .bashrc..."
mkdir $HOME/bin
#[Todo: option for dont overwrite flag] -n
#go cp $DIR/bash_profile.sh $HOME/.bash_profile
#go cp $DIR/bashrc.sh $HOME/.bashrc
# Todo: aliases (more bash profile stuff)
# postgres -D ...
# ffmpeg stuff

#Todo make sure homebrews path is set before default echo export PATH='/usr/local/bin:$PATH' >> ~/.bash_profile
#for now
#echo PATH=/usr/local/bin:/usr/local/sbin:$PATH >> ~/.bash_profile
#echo PATH=~/bin:$PATH >> ~/.bash_profile
#ok this is fucked, cant source from script, duh, go source $HOME/.bash_profile
echo $PATH

echo $T_UP

echo $OK" Themes..."
#go open $DIR"/../themes/TronLegacy.terminal"
#go open $DIR"/../themes/IR_Black.terminal"
echo $T_UP
###X_CODE
echo $OK" X Code..."
#	xcode-select --install
echo $T_UP

### JAVA
echo $OK" Java..."
echo $T_UP

### HOMEBREW
echo $OK" Homebrew..."
#go ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#go brew doctor
#go brew update
echo $T_UP

echo $OK" Homebrew Packages..."
#go brew install ffmpeg wget figlet nmap ghostscript imagemagick git netcat
#Todo brew install heroku-toolbelt
#brew install node
#Todo add aws-cli
echo $T_UP

### RUBY
echo $OK" Ruby 1.9.3..."
#brew install homebrew/versions/ruby193
#ruby –v
#if ruby is not 1.9.3 => break with error

echo $T_UP

### GEMS
echo $OK" Ruby Gems..."
#gem install rails compass heroku jekyll pg sqlite3 msgpack activerecord redcarpet rspec simplecov yard bundler
echo $T_UP

### NODE

echo $OK" Node Packages..."
# npm install -g grunt-cli
# npm install -g bower
# npm install -g phantomjs
echo $T_UP

### DB
echo $OK" Databases..."
#brew install postgresql --without-ossp-uuid mysql2
#Todo configure postgres and mysql
#add some helpful aliases

#initdb /usr/local/var/postgres

##Launch postgres on startup?

# mkdir -p ~/Library/LaunchAgents
# cp /usr/local/Cellar/postgresql/9.3.5_1/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/
# launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

# ## or run the database

# initdb /usr/local/var/postgres -E utf8
# pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

# and stop the server with
# pg_ctl -D /usr/local/var/postgres stop -s -m fast

# brew info postgres

# #create db's

# createuser msf -P -h localhost; createdb -O msf msf -h localhost
# pass -

echo $T_UP


# VNC Viewer??

# echo '#!/usr/bin/env bash'>> /usr/local/bin/vncviewer
# echo open vnc://\$1 >> /usr/local/bin/vncviewer
# chmod +x /usr/local/bin/vncviewer

### WEBSERVER
echo $OK" Webserver..."
#go brew install nginx...
#apache
#	sudo apachectl start
#	ln -s ~/Sites ~/Dropbox/Scrilla/Sites

echo $T_UP

### Todo Meteor
#curl https://install.meteor.com/ | sh


### SUBLIME
echo $OK" Sublime Text 2..."

#go wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg
#go hdiutil attach $DIR/"Sublime Text 2.0.2.dmg"
#go cp -r "/Volumes/Sublime Text 2/Sublime Text 2.app" "/Applications/Sublime Text 2.app"
go ln -sfn "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" $HOME/bin/subl
echo $BUILD" Paste This Shit in Sublime Console For Sublime Text Package Manager"
echo ''
echo "import urllib2,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation')"
echo ''

echo 'The Coolest Packages and Snippets are...'
echo 'Sublimelinter, ColorPicker, MardownPreview, PrettyJson, AngularJS, Backbone.Marionette, HTML5, HTML Snippets, Sublime Snippets, Bootstrap 3, Jquery, Sublime Syntax Sass'
echo $T_UP

echo $HUNDO" All Went Well."

