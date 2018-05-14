#!/bin/bash
# grading script for ECE131 homework assignments
# run this at the command prompt by typping "./test.sh"
# if your program output matches the correct output then 
# you will pass


# these are macros to change the text color
RED=`tput setaf 1`
GRN=`tput setaf 2`
RST=`tput sgr0`

# then run each program and compare its output to the expected
EXERCISES=(7_7 7_11 7_13)
PASS=0
FAIL=0
for e in "${EXERCISES[@]}"
do
  # first, compile the program
  make exercise_${e} 
  # now run it and save its output to a file
  if [ -f input_${e}.txt ]; then
    cat input_${e}.txt | ./exercise_${e} > output_${e}.txt
  else 
    ./exercise_${e} > output_${e}.txt
  fi
  echo "Exercise ${e}"
  echo "Your program output is:"
  cat output_${e}.txt
  echo "Expected output is:"
  cat correct_${e}.txt
  # now compare your output to the correct output
  if diff output_${e}.txt correct_${e}.txt; then 
    echo "${GRN}PASSED: Files match${RST}"
    PASS=$(($PASS+1))
  else 
    echo "${RED}FAILED: Files differ${RST}"
    FAIL=$(($FAIL+1))
  fi
done
echo "${GRN}Passed $PASS Tests"
if (( FAIL > 0)); then
  echo "${RED}Failed $FAIL Tests"
fi
