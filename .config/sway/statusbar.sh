#!/bin/sh
while true
do
    title="$(swaymsg -t get_tree | jq '.. | select(.type?) | select(.focused==true).name')"
    battery="Battery $(cat /sys/class/power_supply/macsmc-battery/capacity)%"
    date_and_time="$(date +'%Y-%m-%d %I:%M:%S %p') "
    printf "%s | %s | %s\n" "$title" "$battery" "$date_and_time"
    sleep 1
done
#    volume="Volume $(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))"
#    volume="Volume $(pactl list sinks | grep '^[[:space:]]Volume:' |     head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')%"
#    language="Language: $(ibus engine)"
#    volume="Volume $(pactl list sinks | grep '^[[:space:]]Volume:' |     head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')%" 
#    cpu_temp="$(awk '{x += $1} END{ printf "%.2f", x / NR / 1000}' /sys/class/thermal/thermal_zone*/temp)°C"
