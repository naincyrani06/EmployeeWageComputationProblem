#!/bin/bash -x
empCheck=$((RANDOM%3))

isPartTime=1
isFullTime=2
empWagePerHour=20

empHr=0

if [ $empCheck -eq $isFullTime ]
then
	echo "Employee is FullTime"
	empHr=8
elif [ $empCheck -eq $isPartTime ]
then
	echo "Employee is PartTime"
	empHr=4

else
	echo "Employee is Absent"
	empHr=0
fi

echo "Employee's Daily Wage: "$((empWagePerHour*empHr))
