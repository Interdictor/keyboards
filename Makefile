.PHONY: test

test:
	sudo cp ./test /usr/share/X11/xkb/symbols/
	setxkbmap -layout test

