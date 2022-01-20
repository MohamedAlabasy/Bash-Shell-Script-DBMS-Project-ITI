#! /bin/bash
				#=======================================================================================#
				#			   		Drop Database		   	           	#
				#=======================================================================================#
Yellow='\033[1;33m'	# Yellow color code
Blue='\033[1;34m'	# Blue color code 
RED='\033[1;31m'	# Red color code 
Green='\033[1;32m'	# Green color Green
NC='\033[0m' 		# No Color 1;37
echo -e "${NC}Please Enter Database Name : ${Blue}\c${NC}"
read dbName
if [  -d DBMS/$dbName ] 	#This condition is true only when the directory exists.
then	
	echo -e "Are You Sure of Your Choice to Drop This Database ? Choose [y/n] : ${Blue}\c${NC}"
	read choice		
	case $choice in 
		[Yy] )  rm -r DBMS/$dbName
			echo -e "${NC}$dbName ${Green}Has Been Drop Successfully${NC}";;
		[Nn] ) echo -e "${RED}Drope $dbName has been cancelled${NC}";;
		*) echo -e "${NC}$dbName ${RED}is invalid choice${NC}";;
	esac
else
	echo -e "${NC}$dbName ${RED}Is Not Exist${NC}"
fi

./main.sh     #return to the main menu
