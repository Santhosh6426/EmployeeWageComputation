echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
HalfTimeHours=4
DailyWage=0
WagePerHour=20
FullTimeHours=8
RandomCheck=`echo $(($RANDOM%3))`
case $RandomCheck in
	"0")echo "Employee is absent" ;;
	"1")
	DailyWage=$(( $HalfTimeHours * $WagePerHour ))
	echo "Employee is present for halfday" 
	;;
	"2")
	DailyWage=$(( $FullTimeHours * $WagePerHour ))
	echo "Employee is present for full day" 
	;;
esac
echo "Daily wage of the employee is $DailyWage"
