#!/bin/bash

# Check if the number of arguments is less than or equal to 8
if [ $# -gt 8 ]; then
  echo "Error: Too many arguments."
  echo "Expected at most 8 arguments, but got $#."
  exit 1
fi

# Initialize the result to the first argument
result=$1

# Loop through the rest of the arguments
for (( i=2; i<=$#; i++ )); do
  b=${!i}

  # Check if a is divisible by b
  if [ $((result % b)) -eq 0 ]; then
    result=$((result / b))
  else
    # Check if b is divisible by 5
    if [ $((b % 5)) -eq 0 ]; then
      result=$((result * b))
    else
      # Check if a is greater than b
      if [ $result -gt $b ]; then
        result=$((result - b))
      else
        result=$((result + b))
      fi
    fi
  fi
done

# Output the final result
echo "Result: $result"
