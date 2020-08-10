#!/bin/bash -x
employeeCheck=$((RANDOM%2))

IS_PRESENT=1

if [ $employeeCheck -eq $IS_PRESENT ]
then
        echo "Employee is Present"
else
        echo "Employee is Absent"
fi
