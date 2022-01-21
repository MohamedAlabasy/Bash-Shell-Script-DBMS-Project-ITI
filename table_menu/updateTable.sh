#! /bin/bash
				#=======================================================================================#
				#			   		Update Table		   	           	#
				#=======================================================================================#
RED='\033[1;31m'	# Red color code 
Green='\033[1;32m'	# Green color Green
Blue='\033[1;34m'	# Blue color code 
NC='\033[0m' 		# No Color
echo -e "${NC}Enter your Database Name : ${Blue}\c${NC}"
read DBname     
echo -e "${NC}Available Tables in $DBname is : "
ls --color ./DBMS/$DBname
read -p "please enter table name : " TableName
coloumnsCount=`awk -F, 'NR==1 {print NF}'  ./DBMS/$DBname/$TableName`
for(( i=1;i<$coloumnsCount;i++ ))
     do
      echo -n $i "- "
          colName=`grep "%,"  ./DBMS/$DBname/$TableName | cut -d "," -f$i | cut -d "%" -f2`
         echo $colName
     done
     echo -e "Enter your column Number :${Blue}\c${NC}"
     read colNum
       echo -e "${NC}Enter your new value in cloumn $colNum : ${Blue}\c${NC}"
       read newValue
       
     
      #  check pk
        
    if testPk=`grep "%," ./DBMS/$DBname/$TableName | cut -d "," -f$colNum | grep %Pk% | cut -d% -f3`
        then 
        if checkNewValue=`cut -f$colNum -d, ./DBMS/$DBname/$TableName | grep -w $newValue`
           then
             echo -e "${RED}this value is exist${NC}"
               main_menu/connectToDB.sh # to back to manu again     
              
          else
              for(( i=1;i<$coloumnsCount;i++ ))
                do
                  echo -n $i "- "
                  colName=`grep "%,"  ./DBMS/$DBname/$TableName | cut -d "," -f$i | cut -d "%" -f2`
                  echo $colName
               done

                echo -e "${NC}Enter where clause column number : ${Blue}\c${NC}"
                read cl
                
                echo -e "${NC}Enter your condition value : ${Blue}\c${NC}"
                read conVal
                awk -F, '$"'$cl'"=="'$conVal'" {$"'$colNum'"="'$newValue'"} {for(i=1 ;i<=NF ;i++ ) { if (i==NF) print $i; else printf     "%s",$i","}}'  ./DBMS/$DBname/$TableName > updatFile
                cat updatFile >  ./DBMS/$DBname/$TableName
              
        fi
        
         
    else
           echo -e "${RED}not find pk${NC}"
    fi 

testDataType=`grep "%," ./DBMS/$DBname/$TableName | cut -d "," -f$colNum | cut -d% -f3`
echo $testDataType
 
if [ $testDataType=="int" ]
then

     
      if  expr $newValue + 1 2> /dev/null >> /dev/null
      then
       
          echo "${Green}Number${NC}"
      else
            echo -e "${RED}not a Number${NC}"
      fi
     

fi

         for(( i=1;i<$coloumnsCount;i++ ))
         do
           echo -n $i "- "
           colName=`grep "%,"  ./DBMS/$DBname/$TableName | cut -d "," -f$i | cut -d "%" -f2`
           echo $colName
         done
     awk -F, '$"'$cl'"=="'$conVal'" {$"'$colNum'"="'$newValue'"} {for(i=1 ;i<=NF ;i++ ) { if (i==NF) print $i; else printf "%s",$i","}}'  ./DBMS/$DBname/$TableName > updatFile
     cat updatFile >  ./DBMS/$DBname/$TableName
       echo -e "${Green}Your Data Updated Sucessfuly${NC}"
       main_menu/connectToDB.sh # to back to manu again  
