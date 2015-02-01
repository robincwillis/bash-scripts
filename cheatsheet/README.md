#Shit I can never remember

##Terminal Shortcuts

Ctrl + A 	Go to the beginning of the line you are currently typing on
Ctrl + E 	Go to the end of the line you are currently typing on
Ctrl + L 	Clears the Screen, similar to the clear command
Ctrl + U 	Clears the line before the cursor position. If you are at the end of the line, clears the entire line.
Ctrl + H 	Same as backspace
Ctrl + R 	Let’s you search through previously used commands
Ctrl + C 	Kill whatever you are running
Ctrl + D 	Exit the current shell
Ctrl + Z 	Puts whatever you are running into a suspended background process. fg restores it.
Ctrl + W 	Delete the word before the cursor
Ctrl + K 	Clear the line after the cursor
Ctrl + T 	Swap the last two characters before the cursor
Esc + T 	Swap the last two words before the cursor

To config Terminal do move (left and right) word-by-word:
 - Esc + b (left)
 - Esc + f (right)

To configure it to Alt + left and right:
 - Open Terminal preferences (command + ,);
 - At Keyboard tab, select "control cursor left (or right)" and doubleckick it;
    - Left: Select the combo "modifier" to "option" and the action to \033b
    - Right: Select the combo "modifier" to "option" and the action to \033f

d - page down
b - page up

local
osascript -e 'tell application "System Events" to sleep'

remote
osascript -e 'tell application "Finder" of machine "eppc://10.0.1.3" to sleep'


##basic / os x specific (duh)
```
ln -s [dir to link to] [link location] - create a symbolic link
file - display what kind of file it is
locate - find where a file is
diskutil list : list all local drives
df -h : list all mounted drives
uname -a : get kernel version, kernel architecture, etc.
sw_vers : get mac os x version, build
id : get all user info
```

##crontab
```
crontab -e (edit crontab file)
crontab -l (list crontab files)
```

##chmod (embarassing)
```
chmod o-r file
chmod a+x file
chmod ugo+x file

u - user
g - group
o - other
a - all

- remove
+ add

r - read
w - write
x - execute
```

##curl

verbose
```
curl -v http://localhost:5000
```

HTTP Methods
```
curl -X GET <url>
curl -X POST <url>
curl -X PUT <url>
curl -X DELETE <url>
```

show me the response headers
```
curl -i http://localhost:5000
```

pass a header
```
curl -H 'Content-Type: application/json'
```

add some data to the request
```
curl -X GET "http://localhost:5000&page=2"
curl -X POST http://localhost:5000 -d username=rwillis -d password=password
```

post a file
```
curl -X POST -H 'Content-Type: image/jpeg' -T pictures/car.jpg <url>
```

##vim

```
Page Up        - CTRL-U
Page Down      - CTRL-D
Half Page Up   - CTRL-B
Half Page Down - CTRL-F

Undo 	       - U
Redo 	       - CTRL-R
End of Line    - $
Start of Line  - 0
Next Word      - W
Prev Word      - B

Split Windows  - :vsplit __FILE
Jump Window    - CTRL-W
Close Window   - :close

quit without save - :q
quit with save 	  - :wq
save		  - :w
```

##lsof

basic
```
lsof -i (show all connections)
lsof -i :[port]
```

show ports system is waiting for connections on
```
lsof -i| grep LISTEN
```

show current active connections
```
lsof -i| grep ESTABLISHED
```

return just a PID
```
lsof -t -c Mail
```

see what a given process ID has open (good for learning more about unknown processes)
```
lsof -p 10075
```

##ps

```
ps -e / -A everything
ps -efc (standard i think)
ps -a (show stuff with controlling terminal)
ps -u [user] (show stuff by user)
ps -l  show more columns
ps | grep MouseDraw3d
ps -a
ps -f
ps -ax
ps -ax | grep ssh
ps -ax -l
ps -ax -l pid
ps -ax -l | grep Chrome
ps -A | grep hp
ps -A -f | grep hp
```

##ffmpeg
Trim Video
```
ffmpeg -i video.flv -sameq -ss 00:03:41 -t 00:04:10 trimmed_video.avi
```

##nmap flags
```
-sT -	: normal scann
-sS 	: stealth scan
-O 	: guess os
-sV	: get Version and protocol
-sO 	: ip protocol scan
```