#! /bin/bash
				#=======================================================================================#
				#			   		Main Menu		   	           	#
				#=======================================================================================#
echo -e "			Welcome to our Database made by Khloud Elsaid & Mohamed Alabasy" #-e enable interpretation of backslash escapes
mkdir -p DBMS 2>> ./.error.log 	#-p to ceate DBMS if not exist & no thow error in .error.log
function mainMeun
{
	echo -e "	+=======================================================================================+"
	echo -e "	|			   		Main Menu		   	           	|"
	echo -e "	|=======================================================================================|"
	echo -e "	|				    1.Create Database					|"	
	echo -e "	|				    2.List Databases					|"	
	echo -e "	|				    3.Connect To Databases				|"	
	echo -e "	|				    4.Drop Database					|"	
	echo -e "	|				    5.Exit						|"
	echo -e "	+=======================================================================================+"
	echo -e "Enter Your Choice : \c" #\c to get user input in the same line
	read userChoice
	case $userChoice in 
		1) main_menu/createDB.sh;;
		2) main_menu/listDB.sh;;
		3) main_menu/connectToDB.sh;;
		4) main_menu/dropDB.sh;;
		5) echo "Goodbye";exit;; #exit from database
		*) echo -e "invalid choice, try again ... you must choose only from the above list";mainMeun #Call it again
	esac
}
mainMeun #to call the mainFunction in the beginning of the project 
