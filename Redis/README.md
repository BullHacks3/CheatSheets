### Various commands used for Redis Server

### Install redis-server in ubuntu from aptitude ###
```
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get install -y redis-server
```

### Connect to redis cli
```
redis-cli
```

### Check the redis connection
```
ping
```


### SET a particular key
```
SET fname bakul
SET lname gupta
SET name:fname bakul
SET name:lname gupta
```

### GET a value for a particular key
```
GET fname
GET lname
GET name:fname
GET name:lname
```

### Echo a string 
```
ECHO "Hello Lukab"
```


