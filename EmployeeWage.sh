echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
IsPresent=1
DailyWage=0
WagePerHour=20
FullTimeHours=8
HalfTimeHours=4
RandomCheck=$(( RANDOM%3 ))
if [[ $RandomCheck -gt $IsPresent ]]
then
        DailyWage=$(( $WagePerHour * $FullTimeHours ))
        echo "Employee is present full day"
elif [[ $RandomCheck -eq $IsPresent ]]
then
	DailyWage=$(( $WagePerHour * $HalfTimeHours ))
	echo "Employee is present for half day"
else
        echo "Employee not present"
fi
echo "Daily wage of the employee is $DailyWage"
