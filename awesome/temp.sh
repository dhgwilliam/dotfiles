#!/bin/bash

temp1=`cat /proc/acpi/thermal_zone/ATF0/temperature | cut -b 26-27`
temp2=`cat /proc/acpi/thermal_zone/DTS0/temperature | cut -b 26-27`
temp3=`cat /proc/acpi/thermal_zone/DTS1/temperature | cut -b 26-27`

currenttemp=`echo "(($temp1 + $temp2 + $temp3)/3*9/5)+32" | bc`
echo "$currenttemp"
