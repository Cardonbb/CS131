#!/bin/bash

# Timestamp using Date and vendor for loop

TIMESTAMP=$(date "+%F-%T")
VENDOR_IDS=("1.0" "2.0" "4.0")


# for loop
for VENDOR in "${VENDOR_IDS[@]}"; do
    OUTPUT_FILE="${TIMESTAMP}-${VENDOR}.csv"
    awk -F, -v vendor="$VENDOR" '$1 == vendor' 2019-01-h1.csv > "$OUTPUT_FILE"
    echo "$OUTPUT_FILE" >> .gitignore
done

#wc to get X X X datetime -1 etc in ws4.txt
wc -l ${TIMESTAMP}-*.csv > ws4.txt
echo -e "\nContents of .gitignore:" >> ws4.txt
cat .gitignore >> ws4.txt




