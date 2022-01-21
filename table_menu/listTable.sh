#! /bin/bash
				#=======================================================================================#
				#			   		List Tables		   	           	#
				#=======================================================================================#
RED='\033[1;31m'	# Red color code 
Green='\033[1;32m'	# Green color Green
Blue='\033[1;34m'	# Blue color code 
NC='\033[0m' 		# No Color
echo -e "${NC}enter Database name you want to list it is table : ${Blue}\c${NC}"
read DBname
if [ -d DBMS/$DBname ]
	then
      		if [ `ls DBMS/$DBname -l | wc -l`  -gt 1 ];	# Greater than , wc -l  prints the line count
		then 
         		echo -e "${NC}Your Tables Are : "
         		ls DBMS/$DBname
      		else
         		echo -e "${Green}Your Database is Empty${NC}" 
      		fi
  	else
    	  	echo -e "${RED}There Is No Database Called${NC} $DBname"
fi   
main_menu/connectToDB.sh

