
#!/bin/bash
echo "Welcome to EmpWage computation"
isPresent=1
checkPresent=$((RANDOM%2))
if(($checkPresent==$isPresent))
then
echo "Emp Present"
else
echo "Emp Absent"
fi
