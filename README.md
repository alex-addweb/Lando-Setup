# Lando Setup
---


## Usage of this script
<br>

#### First time running the script
- If you are running lando for first time the make sure `Are you doing setup for the first time yes/[no]:`  is yes
- It will ask for db name with path. Enter the db name / with path
  
Eg: `Enter the DB name with path: db.sql` (or)
&nbsp; &nbsp; &nbsp;  `Enter the DB name with path: /home/user_name/<path>/db.sql`

- It will also check whether lando is installed in your system or not. If not script will install lando for you.
<br>

#### Not first time running the script

- If you are not running the script for first time then it will ask for database export and import
```
Do you want to Backup Existing DB yes/[no]: yes
Do you want to Import Database [yes]/no: yes
```
- If you have entered both yes then it will export and import the database. And also ask for DB name, mention as above example.
- If you have entered one of then yes then it will import / export the database
<br>

##### At last it will show you the lando info with table format


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
