#!/bin/bash -x
echo "****** WELCOME TO EMPLOYEE WAGE COMPUTATION ******"
WORKING_DAY_PER_MONTH=20
TOTAL_WORKING_HRS=100
WAGE_PER_HRS=20
IS_FULL_TIME=1
IS_PART_TIME=2

totalWorkingDays=0;
totalEmployeeHrs=0;
while (( totalEmployeeHrs<$TOTAL_WORKING_HRS && totalWorkingDays<$WORKING_DAY_PER_MONTH ))
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
		$IS_FULL_TIME)
      	            empHrs=8;
         	         ;;
		$IS_PART_TIME)
            	      empHrs=4;
               	   ;;
    					*)
					   	empHrs=0;
                  	;;
	esac
   totalEmployeeHrs=$(( $totalEmployeeHrs + $empHrs ))
   dailyWage=$(( $empHrs * $WAGE_PER_HRS ))
   echo $dailyWage
done
totalSalary=$(( $totalEmployeeHrs * $WAGE_PER_HRS ))
echo $totalSalary
