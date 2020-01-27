#!/bin/bash 

echo "Welcome to EmpWage computation"
declare -A dailyWageDict
readonly WAGE_PER_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4
readonly TOTAL_WORKING_DAYS=20
readonly TOTAL_HRS=100
check=$((RANDOM%3))
totalHrs=0
totalDays=0
calHours()
{
	while (($totalHrs < $TOTAL_HRS && $totalDays < $TOTAL_WORKING_DAYS))
	do
		
	case $(( RANDOM%3 )) in
	1)
		hrs=$FULL_DAY_HOUR
		((totalDays++))
	;;

	2)
		hrs=$PART_TIME_HOUR
		((totalDays++))
	;;
	*)
		hrs=0 
	;;
	esac
dailyWageDict[$totalDays]=$(($hrs*$WAGE_PER_HOUR))
totalHrs=$(($totalHrs+$hrs))	
done

}

calHours
monthlyWage=$(($totalHrs*$WAGE_PER_HOUR))
echo "Days  : " ${!dailyWageDict[@]}
echo "Daily wage of employee : " ${dailyWageDict[@]}

echo "Monthly wage of employee : " $monthlyWage

