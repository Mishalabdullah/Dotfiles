#!/bin/sh
nitrogen --restore&
while true;do
	xsetroot -name "$(clock)","$(battery)"
	sleep 1s
done&

