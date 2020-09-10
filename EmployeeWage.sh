echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
HalfTimeHours=4
WagePerHour=20
FullTimeHours=8
WorkingDays=20
MonthlyWage=0
hours=0
days=1
while [[ $hours -le 100 && $days -le 20 ]]
do
	RandomCheck=`echo $(($RANDOM%3))`
	echo -e "\nDay: $days"
	DailyWage=0
	case $RandomCheck in
		"0")echo "Employee is absent" ;;
		"1")
		DailyWage=$(( $HalfTimeHours * $WagePerHour ))
		hours=$(( $hours + $HalfTimeHours ))
		echo "Employee is present for halfday" 
		;;
		"2")
		DailyWage=$(( $FullTimeHours * $WagePerHour ))
		hours=$(( $hours + $FullTimeHours ))
		echo "Employee is present for full day" 
		;;
	esac
	days=$(( $days + 1 ))
	MonthlyWage=$(( $MonthlyWage + $DailyWage ))
	echo -e "DailyWage: $DailyWage     MonthlyWage: $MonthlyWage"
done

