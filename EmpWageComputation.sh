
#!/bin/bash

echo "Welcome to EmpWage computation"

readonly WAGE_PER_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4
readonly TOTAL_WORKING_DAYS=20
check=$((RANDOM%3))
isParttime=2
isFulltime=1
totalHrs=0
for ((i=0;i<=$TOTAL_WORKING_DAYS;i++))
do
case $check in
$isParttime )
 
   totalHrs=$(($totalHrs+$FULL_DAY_HOUR))
;;

$isFulltime )
 
   totalHrs=$(($totalHrs+$PART_TIME_HOUR))

;;
* )
 echo "Emp Absent"
esac
done
monthlyWage=$(($totalHrs*$WAGE_PER_HOUR))
echo "Monthly wage of employee : " $monthlyWage


