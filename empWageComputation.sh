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
function getEmployeeHours()
{
        empCheck=$1
       case $empCheck in
                $isPartTime)
                      empHr=4
                ;;
                $isFullTime)
                        empHr=8
                ;;
                *)
                        empHr=0
                ;;
        esac

        echo $empHr
}
while [[ $totalEmpHour -le $maximumWorkingHours && $totalWorkingDays -le $noOfWorkingDays ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))
        empHr=$( getEmployeeHours $empCheck )

       dailyEmpWage["Day"$totalWorkingDays]=$((empWagepErHour*empHr))

        totalEmpHour=$((totalEmpHour+empHr))
	 totalEmpWage=$((totalEmpHour*empWagePerHour))
done

for i in "${!dailyEmpWage[@]}"
do
        echo "$i:${dailyEmpWage[$i]}"
done
echo "Total Working Hours of Employee in a Month is: "$totalEmpHour
echo "Total Wage of Employee in a month is: "$totalEmpWage

