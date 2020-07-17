#!/bin/bash -x

echo "Check Employee Wages......."

isPresent=1
isAbsent=0
empWagePerHr=20
isFullTime=1
fullTimeEmpHrs=8
Attendance=$(( RANDOM % 2 ))

if [ $Attendance -eq $isPresent ]
then
	echo "Employee is Present"

	empCheck=$(( RANDOM % 2 ))

	if [ $empCheck -eq $isFullTime ]
	then
		salary=$(( $empWagePerHr * $fullTimeEmpHrs ))
		echo "Employee salary is : $salary"

	else
		echo "Employee is part time"

	fi

elif [ $Attendance -eq $isAbsent ]
then
	echo "Employee is Absent"
else
	exit
fi
