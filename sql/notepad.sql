-- Vorbereitungen

SHOW DATABASES;
USE mydb -A;
SHOW TABLES;
SELECT * FROM mydb.employees;
SELECT * FROM mydb.countries;

SELECT user();

-- user-Tabelle
SHOW DATABASES;
USE mysql;
SHOW TABLES;

DESCRIBE mysql.user;

-- USER ANLEGEN
SELECT
    user,
    authentication_string 
FROM mysql.user;
 
 -- Anlegen SUPERUSER / ADMIN
 CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
 
 -- Plugins
 SELECT
    user,
    plugin
FROM mysql.user;

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

mysql -u admin -p

SHOW GRANTS FOR 'admin'@'localhost';

 -- Anlegen allg. USER
 CREATE USER 'max'@'localhost' IDENTIFIED BY 'max';
 
mysql -u max -p 

SHOW PRIVILEGES;
SHOW GRANTS FOR 'max'@'localhost';

GRANT
	SHOW DATABASES, SELECT
	ON *.*
	TO 'max'@'localhost';
	
FLUSH PRIVILEGES;

-- login als max
SHOW DATABASES;
SELECT * FROM mydb.employees;
SELECT * FROM mydb.countries;

DROP TABLE mydb.employees;
