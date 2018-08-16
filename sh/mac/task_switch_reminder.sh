#!/bin/bash

# Set time length for each task segment in minutes
l=30

# Set time to allow for switching between tasks in minutes
w=3

i=0
j=1
x=0
s=$((l * 60))
t=$((w * 60))

say Initializing task switch reminder program. Task intervals are $l minutes, and breaks between tasks are $w minutes. Beginning first task. 
while true; do
clear
until [ $i -gt $s ]; do
sleep 1
let x=$s-$i
echo -ne $x
echo -ne " seconds until task switch...\r"
let i+=1
done
say Attention: It is time to switch tasks. You have $w minutes to save your work and find a new task!
sleep 0.1
clear
let j=1
until [ $j -gt $w ]; do
# say $j
sleep 0.25
let j+=1
done
say Begin your new task now! You have $l minutes.
let i=0
let j=1
done
