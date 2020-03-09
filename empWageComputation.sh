#!/bin/bash -x
echo "****** WELCOME TO EMPLOYEE WAGE COMPUTATION ******"
IS_PRESENT=1
empCheck=$((RANDOM%2))
if [ $IS_PRESENT -eq $empCheck ]
then
       echo Employee is present
else
       echo Employee is absent
fi
