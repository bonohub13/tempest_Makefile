clean:
	$(shell ([ -f "tempest" ] && rm tempest) || true)
	$(shell ([ -d "/usr/lib/xscreensaver" ] && /usr/bin/xscreensaver/tempest) || true)
	$(shell ([ -d "/usr/share/applnk/System/ScreenSavers" ] && /usr/share/applnk/System/ScreenSavers/tempest.desktop) || true)

build:
	gcc -o tempest tempest.c -lGL -X11 -lm

install: build
	mkdir -p /usr/lib/xscreensaver
	cp tempest /usr/lib/xscreensaver

install-KDE: build install
	mkdir -p /usr/share/applnk/System/ScreenSavers
	cp tempest.desktop /usr/share/applnk/System/ScreenSavers

install-xscreensaver: build install
	$(shell echo 'tempest -root' | tee ~/.xscreensaver > /dev/null)
