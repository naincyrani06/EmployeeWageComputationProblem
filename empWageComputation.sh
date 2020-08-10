#!/bin/bash -x
empCheck=$((RANDOM%3))

isPartTime=2
isFullTime=1
empWagePerHour=20
noOfWorkingDays=20
totalWorkingDays=0
declare -A dailyEmpWage
while [ $totalWorkingDays -le $noOfWorkingDays ]
do

       ((totalWorkingDays++))

       empCheck=$((RANDOM%3))

       case $empCheck in
               $isPartTime)
                       empHr=4
               ;;
               $isFulltime)
                       empHr=8
               ;;
               *)
                       empHr=0
               ;;
       esac

       dailyEmpWage["Day"$totalWorkingDays]=$((empWagePerHour*empHr))
done
for i in "${!dailyEmpWage[@]}"
do
       echo "$i:${dailyEmpWage[$i]}"
done

