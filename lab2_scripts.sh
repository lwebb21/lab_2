#!/bin/bash
# Authors : Lucas Webb
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter Expression"
read exp
echo "Enter File Name"
read file

grep $exp $file

echo "Number of Phones"
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}$' $file
echo "Number of Emails"
grep -c '@' $file

grep  '303\-[0-9]\{3\}\-[0-9]\{4\}$' $file > phone_results.txt
grep  '@geocities.com' $file > email_results.txt
grep  $1 $file > command_results.txt

git add phone_results.txt command_results.txt email_results.txt
git commit -m "add lab2_scripts.sh"

