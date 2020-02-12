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
	read -p "Enter number of hours done in  month " hours
	if(( $hours<101 ))
	then
		wage=$(echo )
}
Attendence
empDailyWage 
partTimeEmpWage
empWageForMonth
