#!/bin/bash

# Display the first five lines of the titanic.csv file
echo -e "Task 3: Display the first five lines of the titanic.csv file:\n"

awk 'NR<=5' ./titanic.csv
echo ""


# Count and print the number of passengers per class
echo -e "Task 4: Count and print the number of passengers per class:\n"

awk -F, '{if(NR>1) count[$2]++} END {for (class in count) print "Class " class ": " count[class]}' ./titanic.csv
echo ""

# Compute and print the average age of passengers
echo -e "Task 5: Compute and print the average age of passengers:\n"

awk -F, '{if(NR>1 && $6 != "") {sum+=$7; count++}} END {if (count > 0) print "Average Age: " sum/count; else print "No age data available"}' ./titanic.csv
echo ""


# Survival Rates by Class
echo -e "Task 6: Survival Rates by Class:\n"
awk -F, '
NR > 1 {
    if ($2 == 1) {
        survived[$3]++
    }
    total[$3]++
}
END {
    total_survived = 0
    total_passengers = 0
    for (class in total) {
        rate = (survived[class] / total[class]) * 100
        printf "Class %s: %.2f%% (Survived: %d, Total: %d)\n", class, rate, survived[class], total[class]
        total_survived += survived[class]
        total_passengers += total[class]
    }
    printf "Total: %.2f%% (Survived: %d, Total: %d)\n", (total_survived / total_passengers) * 100, total_survived, total_passengers
}' ./titanic.csv
echo ""

