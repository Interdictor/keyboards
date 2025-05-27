.PHONY: test

test:
	sudo cp ./io /usr/share/X11/xkb/symbols/
	setxkbmap -layout test

