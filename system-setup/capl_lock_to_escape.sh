#!/bin/sh

#run as root

xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear Lock'
echo keycode 58 = Escape | loadkeys
