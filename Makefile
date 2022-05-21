
clean:
	$(shell ([ -f "tempest" ] && rm tempest) || true)
	$(shell ([ -d "/usr/lib/xscreensaver" ] && /usr/bin/xscreensaver/tempest) || true)
	$(shell ([ -d "/usr/share/applnk/System/ScreenSavers" ] && /usr/share/applnk/System/ScreenSavers/tempest.desktop) || true)

build:
	gcc -o tempest tempest.c -lGL -lX11 -lm

install: build
	sudo /bin/mkdir -p /usr/lib/xscreensaver
	sudo /bin/cp tempest /usr/lib/xscreensaver

install-KDE: build install
	sudo /bin/mkdir -p /usr/share/applnk/System/ScreenSavers
	sudo /bin/cp tempest.desktop /usr/share/applnk/System/ScreenSavers
