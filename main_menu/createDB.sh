#! /bin/bash
				#=======================================================================================#
				#			   	    Create Database		   	           	#
				#=======================================================================================#
		
echo "Please Enter your Database name"
read DBname
if [ -d ./DBMS/$DBname ]                    # to check if the given variable to exist Directory or not
then
	echo "This Database is already Existed"
else
       mkdir ./DBMS/$DBname 2>> ./.error.log  # to create Directory and set error in .error.log 
       if [ $? = 0 ]                        # to check the last commande is run by the correct way
       then
	     echo "your DataBase created sucessfully"
       else
	       
	     echo "There is some Error happend " 

       fi
fi  
#pwd  I use it to know where am i. 
./main.sh     #return to the main menu           
