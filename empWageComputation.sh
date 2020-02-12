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
echo "1. Check Attendence"
echo "2. Employee Daily Wage "
echo "3. Part Time Employee Wage "
echo "4. Employee Wages for Month "
echo "5. Employee Wage in month with day or hour "
echo "Enter your choice "
read ch
case $ch in 
 1)
	Attendence ;;
 2)
	empDailyWage ;;
 3)
	partTimeWage ;;
 4)
	empWageForMonth ;;
 5)
	empWageMonthCondition ;;
 *)
	echo "Wrong input "
