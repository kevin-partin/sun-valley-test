#! /usr/bin/env wish

# Sun-Valley Theme
set lib [file dirname [file normalize [info script]]]
source [file join $lib sun-valley sun-valley.tcl]
set_theme light
# set_theme dark

wm withdraw .

set window .sun-valley-test

toplevel $window -padx 10 -pady 10

wm title $window {Sun-Valley Test}

wm protocol $window WM_DELETE_WINDOW [namespace code "destroy $window"]

# Create the menu bar for the application.
menu $window.menu
$window configure -menu $window.menu

# Create a File sub-menu.
menu $window.menu.file -tearoff 0

$window.menu add cascade \
	-label {File} \
	-menu $window.menu.file \
	-underline 0

$window.menu.file add command \
	-label {Exit} \
	-command [namespace code "destroy $window"]

menu $window.menu.format -tearoff 0

$window.menu add cascade \
	-label {Format} \
	-menu $window.menu.format \
	-underline 0

$window.menu.format add command \
	-label {Dummy Menu Entry}

tkwait window $window

exit 0
