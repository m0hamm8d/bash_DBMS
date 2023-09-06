#!/usr/bin/bash

#make first selector menue
first_menu=("Create Database" "List Databases" "Connect To Databases" "Drop Database")
please=`pwd`
select choies in "${first_menu[@]}"
do
case $REPLY in
1) . ./create_database.sh
;;
2) . ./list_database.sh
;;
3) . ./menu2.sh
;;
4) echo "hi $choies"
;;
*) echo "the $REPLY is not found"
esac
done

