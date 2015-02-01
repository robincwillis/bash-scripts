# alias cp='cp -i'
# alias mv='mv -i'
# alias rm='rm -i'
# alias ls='ls -lG'
# alias sshg5='ssh rwillis@designingcrime.dyndns.org'
#alias reloadbash='source ~/.bash_profile'

# export PATH="$PATH:/Developer/Tools"

# See following for more information: http://www.infinitered.com/blog/?p=10

# Identify OS and Machine -----------------------------------------
export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export OSVERSION=`uname -r`; OSVERSION=`expr "$OSVERSION" : '[^0-9]*\([0-9]*\.[0-9]*\)'`
export MACHINE=`uname -m | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export PLATFORM="$MACHINE-$OS-$OSVERSION"
# Note, default OS is assumed to be OSX



# Path ------------------------------------------------------------
#  if [ "$OS" = "darwin" ] ; then
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH  
# OS-X Specific, with MacPorts and MySQL installed
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH  
# OS-X Specific, with MacPorts installed
#  fi

# if [ -d ~/bin ]; then
# 	export PATH=~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
# fi

# if [ -d ~/cl/bin ]; then
# 	export PATH=~/cl/bin:$PATH  # add your bin folder to the path, if you have it
# fi



# Load in .bashrc -------------------------------------------------
ls source ~/.bashrc



# Hello Messsage --------------------------------------------------
echo -e "Kernel Information: " `uname -smr`
echo -e "`bash --version`"
echo -ne "Uptime: "; uptime
echo -ne "Server time is: "; date

##
# Your previous /Users/rwillis/.bash_profile file was backed up as /Users/rwillis/.bash_profile.macports-saved_2011-08-03_at_12:49:44
##

# MacPorts Installer addition on 2011-08-03_at_12:49:44: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#ruby gems
#
#export PATH=/Library/Ruby/Gems/1.8/gems

