 #!/bin/bash
   # This script calculates simple interest given principal,
   # annual rate of interest and time period in years.
   # Do not use this in production. Sample purpose only.
   # Author: Upkar Lidder (IBM)
   # Additional Authors:
   #  KHOURSSAfatimazahra 
   #Narendra
   # Input:
   # p, principal amount
   # t, time period in years
   # r, annual rate of interest
   # Output:
   # simple interest = p*t*r
   read_number() {
  local prompt="$1"
  local input
  while true; do
    echo -n "$prompt"
    read input
    if [[ $input =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
      echo "$input"
      break
    else
      echo "Invalid input. Please enter a valid number."
    fi
  done
}

echo "Simple Interest Calculator"
# Read principal amount
p=$(read_number "Enter the principal: ")

# Read rate of interest per year
r=$(read_number "Enter rate of interest per year (%): ")

# Read time period in years
t=$(read_number "Enter time period in years: ")

# Calculate simple interest
s=$(awk "BEGIN {printf \"%.2f\", $p * $t * $r / 100}")

echo "The simple interest is: $s"
