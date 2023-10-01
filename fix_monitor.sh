#!/usr/bin/env bash

# This script needs to be added to /etc/lightdm/lightdm.conf under the [Seat:*] section in display-setup-script=/path/to/script

# Check to see if xrandr is available as script will not work otherwise
if [ -z "$(which xrandr)" ]; then
    exit 1
fi

DISABLE_SUBSTRING="eDP"

TO_DISABLE=""
PRIMARY_OUT=""

old_IFS="${IFS}"
IFS=$'\n'
for out in `xrandr | grep connected | cut -d ' ' -f 1-2`; do
    name=`echo $out | cut -d ' ' -f 1`
    state=`echo $out | cut -d ' ' -f 2`
    if [ "$state" = "connected" ]; then
        case "$name" in
        # disable a monitor connected via eDP
        ${DISABLE_SUBSTRING}*)
            if [ -z "$TO_DISABLE" ]; then
                TO_DISABLE="$name"
            fi
            ;;
        *)
            # set the first external monitor as the primary one disable the other monitor

            if [ -z "$PRIMARY_OUT" ]; then
                PRIMARY_OUT="$name"
            else
                xrandr --output "$name" --off
            fi
            ;;
        esac
    fi
done
IFS="${old_IFS}"

# if there is an internal screen, as well as at least one external monitor, then disable the internal monitor and use the external as primary
# otherwiSe, if there are multiple external monitors use the first one detected as the primary monitor

if [ -n "$TO_DISABLE" ] && [ -n "$PRIMARY_OUT" ]; then
    xrandr --output "$PRIMARY_OUT" --primary --auto --output "$TO_DISABLE" --off
elif [ -n "$PRIMARY_OUT" ]; then
    xrandr --output "$PRIMARY_OUT" --primary --auto
fi

exit 0

