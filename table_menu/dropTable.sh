#! /bin/bash
				#=======================================================================================#
				#			   		Drop Table		   	           	#
				#=======================================================================================#
RED='\033[1;31m'	# Red color code 
Green='\033[1;32m'	# Green color Green
NC='\033[0m' 		# No Color
echo -e "${NC}Please enter Database Name ${Blue}\c ${NC}"
read DBname
if [ -d  ./DBMS/$DBname ]             # to check if this DataBase Exist or not       
 then
        echo -e "${NC}$DBname ${Green}is Existing :)${NC}"
        echo -e "Your Tables:"
	ls ./DBMS/$DBname
	echo -e "Enter your Table Name You want to Drop: ${Blue}\c${NC}"
	read TableName
	  #-------------- check if table is exist----------------------#
	if [[ -f ./DBMS/$DBname/$TableName ]]
	 then
		rm  ./DBMS/$DBname/$TableName            # to Drop this Table  
	  	echo -e "${NC}${Green}$TableName is Dorped Now ${NC}"
	  	echo -e "Your Tables:"
	  	ls ./DBMS/$DBname                        #to list the tables after drop one 
	  	./main_menu/connectToDB.sh    #return to connect menu
	  	                        
	  #-------------- if table is Not exist----------------------#	  	
	else
		 echo -e "${NC}${Red}$TableName is already Not exist ${NC}"
		 ./main_menu/connectToDB.sh    #return to connect menu
	fi
else
	echo -e "${RED}$DBname is not Exist${NC}"
	./main.sh
fi
