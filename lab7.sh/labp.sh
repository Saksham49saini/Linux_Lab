#!/bin/bash
# prompt user for input
read -p "enter your name : " name
read -p "enter your age : " age

if [ "$age" -ge 18 ]; then
    echo "Hello $name, you are an adult"
else
    echo "Hello $name, you are a minor"
fi
