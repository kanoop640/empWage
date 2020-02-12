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
empDailyWage()
{
read -p "Entre number of hours " hours
wage=$(echo "$hours" "20" |awk '{print $1*$2}')
 	echo "Daily wage is : " $wage
	return $wage
}
partTimeEmpWage()
{
	read -p "Enter number of hours to be done extra " part
	wage=$(( part*20 ))
	echo $wage
	return  $wage
}
empWageForMonth() 
{
	read -p "Enter the number of months in which work is done " month
	TotalWage=$(echo "$month" "20" |awk '{print $1*$2*8*$2}')
	echo "Total wage in " $month " month is : " $TotalWage
}
empWageMonthCondition()
{
	read -p "Enter number of hours done and day in month  " hours day
	if(( $hours<101  || $day < 21 ))
	then
<<<<<<< HEAD
		wage=$(echo )
}
=======
		wage=$(echo "$hours" |awk '{print $hours*20}')
		wage1=$(echo "$day" |awk '{print $1*8*20}')
		echo "Wage for hours is : " $wage
		echo "Wage for " $day "is : " $wage1
	else
		echo "Day and hours is greter than 20 and 100 " 
	fi
}
empWageMonthCondition
