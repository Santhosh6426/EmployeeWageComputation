echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
IsPresent=1
DailyWage=0
WagePerHour=20
FullTimeHours=8
RandomCheck=$(( RANDOM%2 ))
if [ $IsPresent -eq $RandomCheck ]
then
        DailyWage=$(( $WagePerHour * $FullTimeHours ))
        echo "Employee is present"
else
        echo "Not present"
fi
echo "Daily wage of the employee is $DailyWage"
