#! /bin/bash
				#=======================================================================================#
				#			   	    Create Database		   	           	#
				#=======================================================================================#
Blue='\033[1;34m'	# Blue color code 
RED='\033[1;31m'	# Red color code 
Green='\033[1;32m'	# Green color Green
NC='\033[0m' 		# No Color		
echo -e "${NC}Please Enter your Database name : ${Blue}\c${NC}"
read DBname
if [ -d ./DBMS/$DBname ]                    # to check if the given variable to exist Directory or not
then
	echo -e "${RED}This Database is already Existed${NC}"
else
       mkdir ./DBMS/$DBname 2>> ./.error.log  # to create Directory and set error in .error.log 
       if [ $? -eq 0 ]                        # to check the last commande is run by the correct way
       then
	     echo -e "${NC}$DBname ${Green}created sucessfully${NC}"
       else
	       
	     echo -e "${RED}There is some Error happend${NC}" 

       fi
fi
./main.sh     #return to the main menu           
