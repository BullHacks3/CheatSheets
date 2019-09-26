### Various commands that are frequently used in MySQL ###


#### Check User in mysql ###
```
select user,host from mysql.user;
```

### Create a new user in mysql ###
```
create user 'bullhacks3'@'localhost' identified by  'bullhacks3';
```

### Grant privileges to the user
```
grant privileges on * . * to 'bullhacks3'@'localhost';
```

### Reload the permissions
```
flush privileges;
```

### Login using a root user ###
```
mysql -u root -p;
```
It will prompt for the password to be entered

### Login using specific user ###
```
mysql -u username -p password;
```

### Create a database ###

```  
create database bullhacks3;
```

### Select a database ###
```
use bullhacks3;
```

### Show tables in a database ###
```
show tables;
```

### Show columns for particular table in database
```
desc table_name;
```

### Show the data in a table
```
select * from table_name;
```

### Show specific column in a table
```
select column1,column2 from table_name;
```

### Create a new table
```
create table table_name (
id int,
f_name varchar(30),
l_name varchar(30)
);
```

### Deleta a database ###
```
drop database database_name;
```

### Delete a table
```
drop table table_name;
```

### Insert data into a table each by row
```
insert into table_name values(1,"Bakul","Gupta")
insert into table_name values(2,"Bull","Hacks3")
insert into table_name values(3,"Chef","Hydra")
```

### Insert multiple rows in a table
```
insert into table_name values(1,"Bakul","Gupta"),(2,"Bull","Hacks3),(3,"Chef","Hydra");
```

### Truncate a table ###
It is used to delete all the entries from a table
```
truncate table_name;
```

### Delete a table
Used to delete all entries or specific entries from a table ,but the structure of table remains
```
delete from table_name;
```

### Update a table
```
update table table_name set id=3 where f_name='Bull';
```

### Add a new column to table
```
alter table table_name add column column_name data_type;
```

### Modify the data_type of a table
```
alter table table_name modify column column_name data_type;
```

### Using like in query ###
It returns all the results where the column f_name begins with d or D
```
select * from table_name where f_name like 'd%';
```

Returns all the results where the column f_name ends with d or F
```
select * from table_name where f_name like '%f';
```

Returns all the results where the column f_name contains exactly three characters
```
select * from table_name where f_name like '___';
```

### Creation of Index ###
Index helps to fetch the results faster, so the fields that are frequently used are indexed in the mysql
```
create index index_name on table_name(column_name);
```

### Remove an Index from database
```
drop index index_name;
```


### Primary Key in database
```
create table name_info (
id int,
f_name varchar(30),
l_name varchar(30),
PRIMARY KEY(id)
);
```

### Foreign Key in database
```
create table living (
id int,
living_id int,
city varchar(30),
PRIMARY KEY(id),
FOREIGN KEY(living_id) REFERENCES name_info(id)
);
```


### Inner Join query ###
Returns the results where the column is present in the both  the tables
```
select t.column1,y.column2 
from table1 as t 
inner join
table2 as y
on t.column3=y.column4;
```
 
