# Lando Setup
## Usage of this script

<br>

- Go to directory where your `.lando.yml` file exists and run the below command
```bash
/bin/bash -c "$(curl -sL https://raw.githubusercontent.com/alex-addweb/Lando-Setup/master/setup.sh)"
```
<br>

- Also copy the database file where your `.lando.yml` file exists 

#### First time running the setup
`Are you doing setup for the first time [yes]/no: yes`

- It will ask for database file name. `Enter the Database file name: DATABASE_FILE_NAME`
- It will also check whether lando is installed in your system or not. If not script will install lando for you.
<br>

#### Not first time running the setup
`Are you doing setup for the first time [yes]/no: no`
- If you are not running the script for first time then it will ask for database export and import
```
Do you want to Import Database [yes]/no: yes
Do you want to Export Database yes/[no]: yes
```
- If you have entered both yes then it will export and import the database. And also ask for database name as mentioned as above.
- If you have entered one of then yes then it will import / export the database
<br>

##### At last it will show you the lando info in table format


![Lando_Info](/images/lando_info.png)


### Basic Commands
```
lando --help
```

1. Lando Start - `lando start`
1. Lando Restart - `lando restart`
1. Lando Stop - `lando stop`
1. Lando rebuild from scratch - `lando rebuild`
1. Database Import - `lando db-import <DB-Name>`
1. Database Export - `lando db-export`
1. Lando Destroy - `lando destroy`
