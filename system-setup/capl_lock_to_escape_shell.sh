#!/bin/sh

#add this to /etc/profile
#remap capslock as escape for shell
echo "echo keycode 58 = Escape | loadkeys" >> /etc/profile
