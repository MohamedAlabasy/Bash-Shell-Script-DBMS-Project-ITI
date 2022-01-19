#! /bin/bash
				#=======================================================================================#
				#			   	   Connect To Databases		   	           	#
				#=======================================================================================#
mkdir -p DBMS 2>> ./.error.log 	#-p to ceate DBMS if not exist & no thow error in .error.log
function connectToDB
{
	echo -e "	+=======================================================================================+"
	echo -e "	|			   		Main Menu		   	           	|"
	echo -e "	|=======================================================================================|"
	echo -e "	|				    1.Create Table					|"	
	echo -e "	|				    2.List Tables					|"	
	echo -e "	|				    3.Drop Table					|"	
	echo -e "	|				    4.Insert into Table					|"	
	echo -e "	|				    5.Select from Table					|"
	echo -e "	|				    6.Delete from Table					|"
	echo -e "	|				    7.Update Table					|"
	echo -e "	|				    8.Main Menu						|"
	echo -e "	|				    9.Exit						|"
	echo -e "	+=======================================================================================+"
	echo -e "Enter Your Choice : \c" #\c to get user input in the same line
	read userChoice
	case $userChoice in 
		1) table_menu/createTable.sh;;
		2) table_menu/listTable.sh;;
		3) table_menu/dropTable.sh;;
		4) table_menu/insertIntoTable.sh;;
		5) table_menu/selectFromTable.sh;;
		6) table_menu/deleteFromTable.sh;;
		7) table_menu/updateTable.sh;;
		8) ./main.sh;;
		9) echo "Goodbye";exit;; #exit from database
		*) echo -e "invalid choice, try again ... you must choose only from the above list";connectToDB #Call it again
	esac
}
connectToDB #to call the mainFunction in the beginning of the project 
