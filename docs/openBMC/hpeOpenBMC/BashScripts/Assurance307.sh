#!/usr/bin/bash

# This script computes the difference in kms between the
# limit of 10000 km per year and the date provided in
# args.
#
# Version 0.5
# 

NUMARGS=1

[ $# -ne  $NUMARGS ] && echo "Missing argument (KMs). Exiting..." &&  exit 1

CurrentMileage=$1

RefMileage=79846
LimitPerYear=10000                            # No more kms per year
LimitPerDay=$(echo ${LimitPerYear}/365 | bc)  # No more kms per day

# Reference date: Mai 28 2021 
RefDateSec=$(date +%s  --date='2021-05-28')   # Ref date in seconds since Epoch
TodaySec=$(date +%s --date="$(date -I)")      # Today in seconds since Epoch

TimeSec=$(echo "$TodaySec - $RefDateSec" | bc)  # Time between Ref date and today, in seconds
TimeDay=$(echo "$TimeSec / 86400" | bc)         # Time between Ref date and today, in days


Limit=$(echo "($LimitPerDay * $TimeDay) + $RefMileage" | bc)  # No more km

echo "Today the mileage should be less than: ${Limit} kms"

Delta=$(echo "$Limit - $CurrentMileage" | bc)

echo "The difference between the limit and the current mileage is: $Delta"
