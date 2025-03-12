# What this command does
my command simply automates making the directory of our homeworks in this class

# Why/When this command is useful
This command is useful whenever a new assignment is due in our class

# How you can use this command
just type ./as2.sh and then see below easier to show in example

# Examples + example workflow

**Step 1:** simply enter the command  
./as2.sh


**Step 2:** you are then prompted if u want to include a data set. I wasnt sure how to store and save for later but for now I have the taxi dataset we have been using id saved
i also added a validate checker so u enter Y or N
if no it will then create ur (input).txt and a readme for it

**Step 3:** if you enter yes you can either type the taxi and it will create a new directory with
dataset.csv, (input).txt and a readme

or if you enter in XXXXXXXXXXX id then it will download taht dataset and same thing as ^

**With Taxi Database Example**
```copypaste stuff:
carter_alemania@instance-20250127-220448:~/as2$ chmod 755 ./as2.sh
carter_alemania@instance-20250127-220448:~/as2$ ls
README.MD  as2.sh
carter_alemania@instance-20250127-220448:~/as2$ ./as2.sh
Please Enter Homework assignment
testTaxi
 we need a dataset (Y/N): Y
Enter Dataset Id or type taxi for last dataset
taxi
Downloading...
From (original): https://drive.google.com/uc?id=1fc3saVu2GtG3Rft3zI-VOOsZhaqcSyn3
From (redirected): https://drive.google.com/uc?id=1fc3saVu2GtG3Rft3zI-VOOsZhaqcSyn3&confirm=t&uuid=975d1a6d-bf78-43b8-95c3-4f2685f038ee
To: /home/carter_alemania/as2/testTaxi/dataset.csv
100%|██████████████████████████████████████████████████████████| 450M/450M [00:04<00:00, 103MB/s]
carter_alemania@instance-20250127-220448:~/as2$ ls
README.MD  as2.sh  testTaxi
carter_alemania@instance-20250127-220448:~/as2$ cd testTaxi
carter_alemania@instance-20250127-220448:~/as2/testTaxi$ ls
README.md  dataset.csv  testTaxi.txt
```
**Without Dataset Example**
```
carter_alemania@instance-20250127-220448:~/as2$ ./as2.sh
Please Enter Homework assignment
noTaxi
 we need a dataset (Y/N): n
carter_alemania@instance-20250127-220448:~/as2$ ls
README.MD  as2.sh  noTaxi  testTaxi
carter_alemania@instance-20250127-220448:~/as2$ cd noTaxi
carter_alemania@instance-20250127-220448:~/as2/noTaxi$ ls
README.md  noTaxi.txt
carter_alemania@instance-20250127-220448:~/as2/noTaxi$ cd
carter_alemania@instance-20250127-220448:~$ cd as2
carter_alemania@instance-20250127-220448:~/as2$ ls
README.MD  as2.sh  noTaxi  testTaxi
```





