#!/bin/bash -x
empCheck=$((RANDOM%2))

isPresent=1
empWagePerHour=20

empHr=0

if [ $empCheck -eq $ispresent ]
then
        echo "Employee is Present"
       empHr=8
else
        echo "Employee is Absent"
       empHr=0
fi

echo "Employee's Daily Wage: "$((empWagePerHour*empHr))
