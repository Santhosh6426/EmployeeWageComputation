echo "Welcome to Employee Wage Computation Program"
#!/bin/bash
isPresent=1
dailywage=0
wageperhour=20
fulltimehours=8
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
        dailywage=$(( $wageperhour * $fulltimehours ))
        echo "Employee is present"
else
        echo "Not present"
fi
echo "Daily wage of the employee is $dailywage"
