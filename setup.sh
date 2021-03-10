#!/bin/bash
lando_url="https://raw.githubusercontent.com/harshH-addweb/shell-script/main/ubuntu/lando-setup.sh"

read -e -p "Are you doing setup for the first time yes/[no]: " -i "no" first_setup


if [ $first_setup == 'yes' ]
then
    import_db=yes
    read -e -p "Enter the DB name with path: " db_name
    
    # Check whether lando is installed or not
    if [ -f /usr/local/bin/lando ]
    then
        echo -e "\n\033[0;32m ........Lando Start & DB import........\033[0m \n"
        lando start
        lando db-import $db_name
    else
        # Installing Lando
        sudo apt-get install curl -y
        /bin/bash -c "$(curl -sL $lando_url)"

        echo -e "\n\033[0;32m ........Lando Start & DB import........\033[0m \n"
        lando start
        lando db-import $db_name
    fi
else
    read -e -p "Do you want to Import Database [yes]/no: " -i "yes" import_db
    read -e -p "Do you want to Backup Existing DB [yes]/no: " -i "no" db_backup

    if [ $import_db == 'yes' ] && [ $db_backup == 'yes' ];
    then
        read -e -p "Enter the DB name with path: " db_name
        
        if [ $db_backup == 'yes' ]
            then
                echo -e "\n\033[0;36m ........Exporting Database........\033[0m \n"
                lando db-export
        fi

        echo -e "\n\033[0;33m ........Lando Restarting & Importing Database........\033[0m \n"
        lando restart
        lando db-import $db_name

    elif [ $import_db == 'yes' ] && [ $db_backup == 'no' ];
    then
        read -e -p "Enter the DB name with path: " db_name

        echo -e "\n\033[0;33m ........Lando Restarting & Importing Database........\033[0m \n"
        lando restart
        lando db-import $db_name

    elif [ $import_db == 'no' ] && [ $db_backup == 'yes' ];
    then
        echo -e "\n\033[0;36m ........Exporting Database........\033[0m \n"
        lando db-export
    else
        echo -e "\nYou haven't choosen to import db but you can import it later but running \033[1;35mlando db-import <file-path>\033[0m in your terminal.\n"
        echo -e "\nYou also haven't choosen for db backup but you can backup db by running \033[1;35mlando db-export\033[0m in your terminal.\n"
    fi  
fi


lando info --format table