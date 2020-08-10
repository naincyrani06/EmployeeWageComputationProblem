#!/bin/bash -x
empCheck=$((RANDOM%3))
isPartTime=2
isFullTime=1
empWagePerHour=20
noOfWorkingDays=20
maximumWorkingHours=100
totalEmpHour=0
totalWorkingDays=0

declare -A dailyEmpWage
while [[ $totalEmpHour -le $maximumWorkingHours && $totalWorkingDays -le $noOfWorkingDays ]]
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
	totalEmpHour=$((totalEmpHour+empHr))
done
for i in "${!dailyEmpWage[@]}"
do
       echo "$i:${dailyEmpWage[$i]}"
done
echo "Total Employee Hours of Employee in a month: "$totalEmpHour

