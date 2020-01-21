
#!/bin/bash
readonly WAGE_PER_HOUR=20
readonly FULL_DAY_HOUR=8
echo "Welcome to EmpWage computation"
isPresent=1
checkPresent=$((RANDOM%2))
if(($checkPresent==$isPresent))
then
	echo "Emp Present"
	dailyWage==$(($WAGE_PER_HOUR*$FULL_DAY_HOUR))
	echo "Daily Employee Wage: " $dailyWage
else
	echo "Emp Absent"
fi
