#!/bin/bash

# Find all lines containing "banana":
# Find lines that do not contain "banana":
# Use uniq to find unique lines (output should be the above file, with only one line each for apple, banaona, cherry, date)
# run the command man uniq. Use what you found to extend the uniq comment to count the occurange of each work
# Combine grep and uniq to count occurrences of lines containing "banana":

# Find all lines containing "banana"
echo "Find all lines containing 'banana':"
grep "banana" sample.txt
echo ""

# Find lines that do not contain "banana"
echo "Find lines that do not contain 'banana':"
grep -v "banana" sample.txt
echo ""

# Use uniq to find unique lines (output should be the above file, with only one line each for apple, banana, cherry, date)
echo "Use uniq to find unique lines:"
sort sample.txt | uniq
echo ""

# Use uniq to count the occurrence of each word
echo "Use uniq to count the occurrence of each word:"
sort sample.txt | uniq -c
echo ""

# Combine grep and uniq to count occurrences of lines containing "banana"
echo "Combine grep and uniq to count occurrences of lines containing 'banana':"
grep "banana" sample.txt | sort | uniq -c
echo ""