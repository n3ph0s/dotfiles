#!/usr/bin/env bash

mouse_name="Kensington Expert Mouse"
check=$(xinput | grep "$mouse_name")

if [[ ! -z "$check" ]]; then
  mouse_id=$(xinput | grep "$mouse_name" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
  # Configure the files so that bottom left is left click, top right is right click, bottom right is middle button and top left is back button
  xinput set-button-map $mouse_id 1 8 2 4 5 6 7 3 9
  # Enable Natural Scrolling
  xinput set-prop $mouse_id "libinput Natural Scrolling Enabled" 0
  # Disable accleration for the track ball
  xinput set-prop $mouse_id "libinput Accel Profile Enabled" 0, 1
  # Enable scrolling by holding middle mouse button and using the ball to scroll ( really smooth and fast ). 
  xinput set-prop $mouse_id "libinput Scroll Method Enabled" 0, 0, 1
  # Enable the remmaped middle mouse to be used for middle mouse scroll
  xinput set-prop $mouse_id "libinput Button Scrolling Button" 3
fi 

# Read more here https://askubuntu.com/questions/492744/how-do-i-automatically-remap-buttons-on-my-mouse-at-startup

# Default properties for the Trackball configuration 
# xinput list-props 16
# Device 'Kensington Expert Mouse':
# 	Device Enabled (215):	1
# 	Coordinate Transformation Matrix (217):	1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
# 	libinput Natural Scrolling Enabled (349):	0
# 	libinput Natural Scrolling Enabled Default (350):	0
# 	libinput Scroll Methods Available (351):	0, 0, 1
# 	libinput Scroll Method Enabled (352):	0, 0, 0
# 	libinput Scroll Method Enabled Default (353):	0, 0, 0
# 	libinput Button Scrolling Button (354):	0
# 	libinput Button Scrolling Button Default (355):	2
# 	libinput Button Scrolling Button Lock Enabled (356):	0
# 	libinput Button Scrolling Button Lock Enabled Default (357):	0
# 	libinput Middle Emulation Enabled (358):	0
# 	libinput Middle Emulation Enabled Default (359):	0
# 	libinput Rotation Angle (940):	0.000000
# 	libinput Rotation Angle Default (941):	0.000000
# 	libinput Accel Speed (360):	0.000000
# 	libinput Accel Speed Default (361):	0.000000
# 	libinput Accel Profiles Available (362):	1, 1
# 	libinput Accel Profile Enabled (363):	1, 0
# 	libinput Accel Profile Enabled Default (364):	1, 0
# 	libinput Left Handed Enabled (365):	0
# 	libinput Left Handed Enabled Default (366):	0
# 	libinput Send Events Modes Available (334):	1, 0
# 	libinput Send Events Mode Enabled (335):	0, 0
# 	libinput Send Events Mode Enabled Default (336):	0, 0
# 	Device Node (337):	"/dev/input/event12"
# 	Device Product ID (338):	1149, 4128
# 	libinput Drag Lock Buttons (367):	<no items>
# 	libinput Horizontal Scroll Enabled (368):	1 
