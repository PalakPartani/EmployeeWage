
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

Hours()
{
	while (($totalHrs < $TOTAL_HRS || $totalDays < $TOTAL_WORKING_DAYS))
	do
		((totalDays++))
		case $check in
			$isParttime )
   	totalHrs=$(($totalHrs+$FULL_DAY_HOUR))
	;;

		$isFulltime )
 
   	totalHrs=$(($totalHrs+$PART_TIME_HOUR))

	;;
	esac
	done
return $totalHrs
}

Hours
monthlyWage=$(($totalHrs*$WAGE_PER_HOUR))
echo "Monthly wage of employee : " $monthlyWage

