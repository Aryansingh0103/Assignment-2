#!/bin/bash

# Get the current date and time
current_date=$(date)

# Extract the day of the week, month, day of the month, time, and year
day_of_week=$(echo $current_date | awk '{print $1}')
month=$(echo $current_date | awk '{print $2}')
day_of_month=$(echo $current_date | awk '{print $3}')
time=$(echo $current_date | awk '{print $4}')
year=$(echo $current_date | awk '{print $6}')

# Convert the time to 12 hour format
hour=$(echo $time | awk -F: '{print $1}')
minute=$(echo $time | awk -F: '{print $2}')
second=$(echo $time | awk -F: '{print $3}')

if [ $hour -gt 12 ]; then
  hour=$((hour - 12))
  period="PM"
else
  period="AM"
fi

# Convert the month to numerical form
if [ $month == "Jan" ]; then
  month="01"
elif [ $month == "Feb" ]; then
  month="02"
elif [ $month == "Mar" ]; then
  month="03"
elif [ $month == "Apr" ]; then
  month="04"
elif [ $month == "May" ]; then
  month="05"
elif [ $month == "Jun" ]; then
  month="06"
elif [ $month == "Jul" ]; then
  month="07"
elif [ $month == "Aug" ]; then
  month="08"
elif [ $month == "Sep" ]; then
  month="09"
elif [ $month == "Oct" ]; then
  month="10"
elif [ $month == "Nov" ]; then
  month="11"
elif [ $month == "Dec" ]; then
  month="12"
fi

# Format the result in "dd/mm/yyyy/hh:mm:ss period"
formatted_date="$day_of_month/$month/$year/$hour:$minute:$second $period"

# Output the formatted date
echo $formatted_date
