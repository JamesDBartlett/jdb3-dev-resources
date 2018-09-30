#!/bin/bash

# Set time length for each task segment in minutes
l=30

# Set time to allow for switching between tasks in minutes
w=5

# Initialize non-user defined variables
taskGreeting="Task Switch Reminder Initialized. Task intervals are ${l} minutes. Breaks are ${w} minutes. Start first task now."
breakGreeting="Attention: Time for a break. Get up and stretch, then come back and find a new task. You have ${w} minutes starting now."
newTask="Break time is over. Begin your new task now."
i=0
j=0
x=0
s=$(($l * 60))
t=$(($w * 60))

clear
echo $taskGreeting
say $taskGreeting
while true; do
clear
until [ $i -gt $s ]; do
sleep 1
let x=$s-$i
echo -ne $(($x / 60)):$(($x % 60))
echo -ne " until break time...\r"
let i+=1
done

clear
echo $breakGreeting
say $breakGreeting
clear
until [ $j -gt $t ]; do
sleep 1
let x=$t-$j
echo -ne $(($x / 60)):$(($x % 60))
echo -ne " until break time is over...\r"
let j+=1
done

clear
echo $newTask
say $newTask
let i=0
let j=1
done
