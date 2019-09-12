### Various commands that are frequently used in MySQL ###


#### Check User in mysql ###
```
select user,host from mysql.user;
```

### Login using a root user ###
```
mysql -u root -p
```
It will prompt for the password to be entered

### Login using specific user ###
```
mysql -u username -p password
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

### Insert data into a table
```
insert into table_name values(1,"Bakul","Gupta")
insert into table_name values(2,"Bull","Hacks3")
insert into table_name values(3,"Chef","Hydra")
```



