#!/bin/bash -x

empWagePerHr=20
isFullTime=1
isPartime=2

empCheck=$(( RANDOM % 3 ))

	case $empCheck in
	$isFullTime)
		empTotalHrs=8
	;;

	$isPartTime)
		empTotalHrs=4
	;;

	*)
		empTotalHrs=0
	;;

	esac

salary=$(( $empTotalHrs * $empWagePerHr ))
echo "Salary is : $salary"
