#! /bin/bash
echo Extract and Grading script for ECE131 homework submissions
if [ "$#" -ne 1 ]; then
  echo You must supply the name of the tar.gz file to grade
  echo "USAGE: grade.sh <file to grade>"
  exit -1
fi
echo Grading submitted file $1
FILENAME=$(basename $1 .tar.gz)
HW_NUMBER=${FILENAME: -2}
echo Extracting homework number ${HW_NUMBER} from file name

mkdir $FILENAME
cd $FILENAME

echo Unzipping source directory
tar -xzf ../$1
pwd

ECE131/scripts/grade.sh $HW_NUMBER
