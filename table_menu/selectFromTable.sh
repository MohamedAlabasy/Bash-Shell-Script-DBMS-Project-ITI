#! /bin/bash
				#=======================================================================================#
				#			   	Select from Table		   	           	#
				#=======================================================================================#
Cyan='\033[1;36m'	# Cyan color code
Blue='\033[1;34m'	# Blue color code 
Yellow='\033[1;33m'	# Yellow color code
RED='\033[1;31m'	# Red color code 
Green='\033[1;32m'	# Green color Green
NC='\033[0m' 		# No Color
function mainMeun
{
	echo -e "	${Yellow}+=======================================================================================+"
	echo -e "	|			   		Main Menu		   	           	|"
	echo -e "	|=======================================================================================|"
	echo -e "	|				    1.Create Database					|"	
	echo -e "	|				    2.List Databases					|"	
	echo -e "	|				    3.Connect To Databases				|"	
	echo -e "	|				    4.Drop Database					|"	
	echo -e "	|				    5.Exit						|"
	echo -e "	+=======================================================================================+${NC}"
	echo -e "Enter Your Choice : ${Blue}\c${NC}" #\c to get user input in the same line
	read userChoice
	case $userChoice in 
		1) main_menu/createDB.sh;;
		2) main_menu/listDB.sh;;
		3) main_menu/connectToDB.sh;;
		4) main_menu/dropDB.sh;;
		5) echo -e "${Green}Goodbye${NC}";exit;; #exit from database
		*) echo -e "${RED}invalid choice, try again ... you must choose only from the above list${NC}";mainMeun #Call it again
	esac
}
mainMeun #to call the mainFunction in the beginning of the project 
