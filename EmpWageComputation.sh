
#!/bin/bash

echo "Welcome to EmpWage computation"

readonly WAGE_PER_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4
readonly TOTAL_WORKING_DAYS=20
readonly TOTAL_HRS=100
check=$((RANDOM%3))
isParttime=2
isFulltime=1
totalHrs=0
totalDays=0

calHours()
{
	while (($totalHrs < $TOTAL_HRS || $totalDays < $TOTAL_WORKING_DAYS))
	do
		((totalDays++))
		
	case $(( RANDOM%3 )) in
	1)
		hrs=$FULL_DAY_HOUR
	;;

	2)
		hrs=$PART_TIME_HOUR
	;;
	*)
		emphrs=0 
	esac
dailyWageArr[$totalDays]=$(($hrs*$WAGE_PER_HOUR))
totalHrs=$(($totalHrs+$hrs))	
done

}

calHours
monthlyWage=$(($totalHrs*$WAGE_PER_HOUR))
echo "Daily wage of employee : " ${dailyWageArr[@]}
echo "Monthly wage of employee : " $monthlyWage

