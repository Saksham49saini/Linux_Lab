#!/bin/bash
a="saksham_saini"
b=50

if [ "$a" = "saksham_saini" ] && [ $b -gt 18 ]; then
  echo "you are adult"
fi

if [ "$a" = "akshat" ] && [$b -lt 18 ]; then 
  echo "you are minor"
fi
