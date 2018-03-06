#!/bin/bash

export database_name
export table_name
database_name="test _datebase"
table_name="test _table"

use_database()
{

  read -p "Enter the name of database to use : " database_name_user_input
  input_database_name=$HOME"/database/"$database_name_user_input

  if [ -d $input_database_name ]
  then
    database_name=$database_name_user_input
    echo "SUCCESSFULLY : "$database_name" now used"
  else
    echo "ERROR : databse not found"
  fi
}


while true 
do
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"  
echo "          M A I N - M E N U"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  read -p "Enter
     1 create new database
     2 use exists database
     3 show databases
     0 end the program
*-------------------------------------*
your choice : " user_choice_1

case $user_choice_1 in
    1 )
    ./commands/create_database
    echo "Your database has been created successfully"
    ;;
    2 )
    use_database
    #TODo here will be another manu
    while true
    do
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"  
echo "   D A T A - M A N I P U L A T I O N"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
read -p "Enter
      1  Create Table
      2  Show Tables
      3  Alter Table
      4  Sort Table
      5  Drop Table
      6  Display Table
      7  Add Record
      8  Select Record[s]
      9  Delete Record[s]
      10 Edit Record[s]
      0  return to main menu
*--------------------------------------*
your choice : " user_choice_2
            case $user_choice_2 in
              1 )
              ./commands/create_table
              #echo "create_table"
              ;;
              2 )
              ./commands/show_tables
              #echo "show_tables"
              ;;
              3 )
               ./commands/alter_table
               #echo "alter_table"
              ;;
              4 )
              ./commands/sort_table
              #echo "sort_table"
              ;;
              5 )
              ./commands/drop_table
              #echo "drop_table" 
              ;;
              6 )
              ./commands/display_table
              #echo "display_table"
              ;;
              7 )
              ./commands/add_record
              #echo "add_record"
              ;;
              8 )
              ./commands/select_record
              #echo "select_record"
              ;;
              9 )
              ./commands/delete_record
              #echo "delete_record"
              ;;
              10 )
              ./commands/edit_record
              #echo "edit_record"
              ;;
              0 )
              break
              ;;
              esac 
              done 
    ;;        
    3 )
    ./commands/show_databases
    ;;
    0 )
    echo "Thank you"
    break
    ;;
      
esac

done




