#!/bin/bash

read -p "Enter first numeric value: " first
read -p "Enter Second numeric value :" second
if [ $first -le 10 ] || [ $second -gt 20 ]
  then
     echo "Atleast one conditions is true"
    else
  echo "Both conditions are failed"
fi

