echo "Welcome to Employee Wage Computation Problem on Mater Branch"
Attendence()
{
	rnd=$(( RANDOM%2 ))
	if [[ $rnd > 0 ]]
	then
		echo "Yes, Employee is present "
	else
		echo "No, Employee is not present "
	fi
	
}

