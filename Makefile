SHELL := bash

clean:
	([ -f "tempest/tempest" ] && rm tempest/tempest) || true
	([ -f "/usr/lib/xscreensaver/tempest" ] \
		&& sudo rm /usr/bin/xscreensaver/tempest) || true
	([ -f "/usr/share/applnk/System/ScreenSavers/tempest.desktop" ] && \
		sudo rm /usr/share/applnk/System/ScreenSavers/tempest.desktop) || true

build: clean
	cd tempest && gcc -o tempest tempest.c -lGL -lX11 -lm

install: build
	sudo /bin/mkdir -p /usr/lib/xscreensaver
	sudo /bin/cp tempest/tempest /usr/lib/xscreensaver

install-KDE: build install
	sudo /bin/mkdir -p /usr/share/applnk/System/ScreenSavers
	sudo /bin/cp tempest/tempest.desktop /usr/share/applnk/System/ScreenSavers
