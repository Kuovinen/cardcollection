# To create/recreate own working connection we need a user for the DB

## For simplicity I use "me" as a username and 'psw' as password (used in server queries settings)

IN CMD:
//to connect
psql -u postgres

//to make the db itself (copy contents from sql dump backup instructions below)
postgres=# create database mtg;

postgres=# create user me with encrypted password 'psw';
postgres=# grant all privileges on database mtg to me; //THIS did not work but

\c mtg //and after that:
GRANT ALL PRIVILEGES ON TABLE side_adzone TO jerry;
//does make the server connect to the db.

//NOTE! The server on localhost:3500 cannot query the db directly as a test, because
the query lacks the set data string that the front end provides

### USING/MAKING the backup

HOW TO MAKE:

Open Powershell

Go to Postgres bin folder. For example:

cd "C:\Program Files\PostgreSQL\14\bin"
Enter the command to dump your database. For example:

pg_dump.exe -U postgres -d my_database_name -f D:\Backup\backup-file-name.sql
Type password for your postgres user

HOW TO RESTORE:
CREATE DATABASE dbname; //in my case dbname = mtg

in cmd, whithout even logging into psql:
psql -U user db_name < /directory/archive.sql //in my case:"" psql -U user mtg < C:\Users\UName\mtgDB.sql ""
