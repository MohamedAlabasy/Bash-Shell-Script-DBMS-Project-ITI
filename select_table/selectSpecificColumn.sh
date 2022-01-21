#! /bin/bash
				#=======================================================================================#
				#			   	select specific column		   	           	#
				#=======================================================================================#
Blue='\033[1;34m'	# Blue color code 
Yellow='\033[1;33m'	# Yellow color code
RED='\033[1;31m'	# Red color code 
Green='\033[1;32m'	# Green color Green
NC='\033[0m' 		# No Color
echo -e "${NC}Enter your Database Name : ${Blue}\c${NC}"
read DBname
         #------------- check if this DataBase Exist or not ---------#
if [ -d  ./DBMS/$DBname ]                                                                       
 then
	if [ `ls DBMS/$DBname -l | wc -l`  -gt 1 ];	                                                               # Greater than , wc -l  prints the line count
		then 
         		echo -e "${NC}Your Tables are : "`ls ./DBMS/$DBname`
      		else
         		echo -e "${RED}Your Table is Empty${NC}" 
      	fi
	echo -e "Enter Table Name: ${Blue}\c${NC}"
	read TableName
	if [ -f DBMS/$DBname/$TableName ]
	     then
	         echo -e "${NC}Enter Column Number: ${Blue}\c${NC}"
	         read colNum
	         result= awk -F +|/'BEGIN{FS="|"}{print $'$colNum'}' /DBMS/$DBname/$TableName 2>>./.error.log        # (-F +|/) to accept relative path
	         if [[ $? == 0 ]]
	          then
	           echo -e "Your column is ${Blue}${result}${NC}"
	          else
	           echo -e "${Red}Error Inserting Number it's Not exist${NC}"
	        fi
        else
            echo -e "${RED}$TableName is not Exist${NC}"
	    main_menu/connectToDB.sh                                                                                   # to back to manu again
       fi 	    
 else
       echo -e "${RED}$DBname is not Exist${NC}"
	main_menu/connectToDB.sh                                                                                       # to back to manu again

fi
