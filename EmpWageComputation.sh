
#!/bin/bash

echo "Welcome to EmpWage computation"

readonly WAGE_PER_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4

check=$((RANDOM%3))
if(($check==1))
then
	echo "Emp Present"
	dailyWage==$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
	echo "Daily Employee Wage: " $dailyWage
elif(($check==2))
	then
	echo "Employee present is part time"
	parttime_DailyWage==$(($WAGE_PER_HOUR*$PART_TIME_HOUR))	
	echo "Part time employee wage : " $parttime_DailyWage
	
else
	echo "Emp Absent"
fi
