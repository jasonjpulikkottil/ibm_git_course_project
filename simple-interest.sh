#!/bin/bash

# This script calculates simple interest.

# Usage: simple-interest.sh <principal> <rate> <time>
#   principal: principal amount
#   rate: annual interest rate (in percentage)
#   time: time period in years

# Author: [Your Name]

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

principal=$1
rate=$2
time=$3

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Print the result
echo "Principal Amount: $principal"
echo "Annual Interest Rate: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
