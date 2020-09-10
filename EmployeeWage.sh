echo "Welcome to Employee Wage Computation Program"
#!/bin/bash -x
IsPresent=1
RandomCheck=$(( RANDOM%2 ))
if [ $IsPresent -eq $RandomCheck ]
then
        echo "Employee is present"
else
        echo "Not present"
fi
