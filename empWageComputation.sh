#!/bin/bash -x
empCheck=$((RANDOM%3))

isPartTime=2
isFullTime=1
empWagePerHour=20

empHr=0

case $empCheck in
       $isFullTime)
                echo "Employee is FullTime"
                empHr=8
       ;;
       $isPartTime)
               echo "Employee is PartTime"
               empHr=4
       ;;
       *)
               echo "Employee is Absent"
               empHr=0
       ;;
esac

echo "Employee's Daily Wage: "$((empWagePerHour*empHr))

