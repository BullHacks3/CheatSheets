### Docker CheatSheets ###


### To find the running docker containers on host machine
```
docker ps
```

### Get information about all running as well as exited containers 
```
docker ps -a 
```

### Delete all the exited container  
```
docker rm $(docker ps -a -q -f status=exited)
```

### Delete the docker images from host machine
```
docker rmi $(docker images -a -q)
```

### Delete the unused images, cached images, volumes
```
docker system prune -f
```

### Build an docker images from a dockerfile in the current folder
```
docker build -t hello .
```

### Run a docker container from a docker image in detached mode
```
docker run -d <image_name>
```

### Run a base ubuntu image in detached mode ,with  cmd /bin/bash  ( otherwise it will lead to halt state)
```
docker run -dit ubuntu:18.04 /bin/bash
```

### Review the information about a particular container
```
docker inspect container_id
```

### Login into the container
```
docker exec -it <container_id> /bin/bash
```

### Get all the information about the docker containers sytem usage
```
docker stats
```


### Check the docker network in host machine
```
docker network ls
```

### Retrieve all information about the volume in docker
```
docker volumes ls
```