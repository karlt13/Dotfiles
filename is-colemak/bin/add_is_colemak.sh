#!/usr/bin/env bash
cd $(dirname "$0")/..

sudo patch -u /usr/share/X11/xkb/rules/evdev.xml -i evdev.xml.patch
sudo patch -u /usr/share/X11/xkb/rules/base.xml -i base.xml.patch
cat usr.share.X11.xkb | sudo tee -a /usr/share/X11/xkb/symbols/is

