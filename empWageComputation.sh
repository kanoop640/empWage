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
		wage=$(echo "$hours" |awk '{print $hours*20}')
		wage1=$(echo "$day" |awk '{print $1*8*20}')
		echo "Wage for hours is : " $wage
		echo "Wage for " $day "is : " $wage1
	else
		echo "Day and hours is greter than 20 and 100 " 
	fi
}
getWorkHour()
{
	echo "Enter total working day and total hours "
	read day
	read hours
	ge=$(echo "$day" "$hours" |awk '{print $2/$1 }')
	echo "Working hours is " $ge
}
totalWage()
{
	echo "How many day you worked and total hours " 
	read day
	read  hours
	dailyWage=$(echo "$day" "$hours" |awk '{print ($2/$1)*20 }')
	total=$(echo "$hours" |awk '{print $1*20 }')
	echo "Daily wage is : " $dailyWage "and total wage is : " $total "and days is : " $day
}
echo "1. Check Attendence"
echo "2. Employee Daily Wage "
echo "3. Part Time Employee Wage "
echo "4. Employee Wages for Month "
echo "5. Employee Wage in month with day or hour "
echo "6. To get working hours "
echo "7. Total Wage and Daily wage "
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
 6)
	getWorkHour ;;
 7)
	totalWage ;;
 *)
	echo "Wrong input "
esac
