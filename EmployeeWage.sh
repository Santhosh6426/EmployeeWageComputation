echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
HalfTimeHours=4
WagePerHour=20
FullTimeHours=8
WorkingDays=20
MonthlyWage=0
for (( day=1; day<=$WorkingDays; day++ ))
do
	RandomCheck=`echo $(($RANDOM%3))`
	echo -e "\nDay: $day"
	DailyWage=0
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
	MonthlyWage=$(( $MonthlyWage + $DailyWage ))
	echo -e "DailyWage: $DailyWage     MonthlyWage: $MonthlyWage"
done
