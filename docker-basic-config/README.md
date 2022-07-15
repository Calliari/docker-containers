# docker-basic-config
This is the most basic configuration for docker

## Docker intalled and using basic config

 ### useful CMD no in terminal

* Build docker container

```
docker build -t ngnix
```
* Check the docker images

```
docker images
```

* Check what docker is running

```
docker ps
``` 

* Run docker 

```
docker run -p 3000:80 nginx
```

* Stops docker 

```
clt + c
```
* Run docker in the background

```
docker run -dp 3000:80 nginx

```

* Stops docker in the background

```
docker stop my_container  "for one container"

```

```
docker stop $(docker ps -a -q)  "for all containers"
```


===================================================================================================
## Docker compose  intalled and using basic config

* Build and install al configurations that is defined in the dockerfile

```
docker-compose up
```

* Stops docker in the background

```
docker-compose down
```

