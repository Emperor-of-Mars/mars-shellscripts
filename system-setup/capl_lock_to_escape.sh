#!/bin/sh

#remap capslock as escape for x
setxkbmap -option caps:escape

#add this to /etc/profile
#remap capslock as escape for shell
echo keycode 58 = Escape | loadkeys
