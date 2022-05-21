#!/bin/sh

if [ -f "${HOME}/.xscreensaver" ]; then
    line=$(grep -n "GL:" ~/.xscreensaver | tail -n 1 | awk -F: '{print$1}')
    sed -i.bak "$(line)s/.*/&\n\s\sGL: tempest \\n\\/" "${HOME}/.screensaver"
else
    echo '  GL: tempest \\n\\' | tee "${HOME}/.screensaver" > /dev/null
fi
