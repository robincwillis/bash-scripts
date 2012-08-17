



*************************
ROBO SCRITPS
*************************

Stable…

banner
batchconvert
myip
mate
pingloop
togglehiddenfiles
fileop
banner

Todo…

banner 	 - displays all avalaible figlet banners
		 - specify specific font

pingloop - need to allow usuer to specify host to ping

fileop 	 - verbose not working
		 - put files into dated directories
		 
mp3scrape - get into one file
gs-batch - not sure whats going on here

-------------------------
files & folders
-------------------------
thf (toggles hidden files display in finder)
togglehiddenfiles



-------------------------
ffmpeg
-------------------------
batchconvert -t movie .flv .avi
batchconvert -t audio .flac .mp3
batchconvert -t image .tiff .jpg
joinmovies
-------------------------
rsync
-------------------------
migrate [path] -k

-------------------------
security
-------------------------
denyhosts
cd /usr/share/denyhosts
sudo ./daemon-control start

-------------------------
network
-------------------------

pingloop (pings an ip at some interval to see if it is up or not )