#!/bin/bash

taxiData=1fc3saVu2GtG3Rft3zI-VOOsZhaqcSyn3


validate()
{
        while true; do
        read -p "$do we need a dataset (Y/N): " response
        case "$response" in
                [Yy]* ) return 0 ;;
                [Nn]* ) return 1 ;;
                *) echo "invalid input enter y or n" ;;
        esac
        done
}


#get what we will call this assignment 4,5,6,etc
echo "Enter Homework assignment"
read hw



#first checks if we need a dataset.
if validate; then
        echo "Enter Dataset Id or type taxi for last dataset"
        read dataset
else
        dataset=""
fi


#makes director
mkdir $hw
#puts the .txt file and readme in it
touch $hw/$hw.txt
echo "# $hw" > "$hw/README.md"

#inserts dataset into it
if [ "$dataset" = "taxi" ]; then
        gdown "$taxiData" -O "$hw/dataset.csv"
elif [ -n "$dataset" ]; then
        gdown "$dataset" -O "$hw/dataset.csv"
fi
~        
