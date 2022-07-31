#!bin/bash

#Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
#For this part of the lab, initialize a process that won’t harm the OS’s functionality upon termination. Don’t kill essential processes required for the OS to work, such as kernel drivers.
#Use a loop in your script.
#This loop will facilitate the menu system of your script, so that it can prompt the user to choose an option.
#Display running process 

picked_number="y"

while [ $picked_number == "y" ]

do

ps aux

echo "Enter the PID you want to terminate"

read pid_number

echo "The following PID number has been terminated: $pid_number" 

#Kill the process

kill -9 $pid_number   

echo -e "Would you like to terminate another process? (y for yes / n for no)"

read picked_number

done
