#! /bin/bash
# This grades a homework assignment
# call it from the build directory like (to grade HW01)
#  ../ECE231/scripts/grade.sh 01
# it will print the results of running cpplint and 
# the GTest codes produced by homeworkXX_test
echo --------------------------------------------------
echo Grading script for ECE231 homework submissions
if [ "$#" -ne 1 ]; then
  echo You must supply the homework number to grade
  echo "USAGE: grade.sh <XX>"
  echo "  Where XX is the homework number"
  echo "  must be run from the bas ECE131 directory"
  exit -1
fi
HW_NUMBER=$1
echo Grading Homework ${HW_NUMBER}

dir=`dirname $0`/..
cd homework${HW_NUMBER}
echo In directory `pwd`
./test.sh
echo --------------------------------------------------
echo $0
exit 0
