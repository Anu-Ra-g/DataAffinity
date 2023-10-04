# Description of Assginments and how to use them

## Assignment 1

This program works on a basic logic. Given a address, the program extracts the pincode from it. Then it makes a **GET** request to the api with the pincode. This fetches a response, from which we can parse the list of postoffices in that pincode. After that it checks that if the input address is in the list of postoffices. If yes, then the address is valid or else not valid. 

After cloning the repo in your local system, perform this steps of commands

1. Run `pip install -r requirements.txt` to install the required modules
2. Run `python main.py` in your terminal
3. A prompt will appear, asking you to enter your address. 

The prompt runs in a loop. So you can enter as many addresses as like and to quit the loop enter "Quit" or "quit"

## Assignment 2

This is the list of SQL commands for the questions in the assignment. Query a, b, c are working as expected. I couldn't figure the columns for Query d

## Assignment 3

This contains two bash scripts `asg3.sh` and `asg3-v1.sh` to parse the given input in `demo.txt` file and to store it in a .tsv file.
The difference between `asg3.sh` and `asg3-v1.sh` is that former used a loop for parsing through the input file, whereas the latter uses `awk` command to faster execution. 
Similarly, this input file can be parsed into a ***json***file using a bash script.
