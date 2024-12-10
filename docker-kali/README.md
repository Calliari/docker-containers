#### How to use a simple docker containers, this is just an quick example, if with `-v` 'volume' mount, and `-w` 'working dir', and `--rm` to remove the container after exited.
### Useful docker commands
```
docker build -t friendlyname .  # Create image using this directory's Dockerfile
docker run -p 4000:80 friendlyname  # Run "friendlyname" mapping port 4000 to 80
docker run -d -p 4000:80 friendlyname         # Same thing, but in detached mode
docker ps                                 # See a list of all running containers
docker stop <hash>                     # Gracefully stop the specified container
docker ps -a           # See a list of all containers, even the ones not running
docker kill <hash>                   # Force shutdown of the specified container
docker rm <hash>              # Remove the specified container from this machine
docker rm $(docker ps -a -q)           # Remove all containers from this machine
docker images -a                               # Show all images on this machine
docker rmi <imagename>            # Remove the specified image from this machine
docker rmi $(docker images -q)             # Remove all images from this machine
docker login             # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
docker push username/repository:tag            # Upload tagged image to registry
docker run username/repository:tag                   # Run image from a registry
```

### Intro

The source of information is from https://docs.docker.com/

1. Get set up and oriented, on this page.
2. Build and run your first app
3. Turn your app into a scaling service
4. Span your service across multiple machines
5. Add a visitor counter that persists data
6. Deploy your swarm to production

### 1. Installing

A step by step series of "docker" (I have use MAC for this repo).

install docker  https://store.docker.com/editions/community/docker-ce-desktop-mac

Check if the last stable version is installed

```
docker --version
```

My version is ( Docker version 17.03.1-ce, build c6d412e )

## Build and run your the first container

### 1. Build the container with the name "kali-container"

```
docker build -t kali-img .
```

#### Run the container "kali-container" in detached mode with the ""-d" flag and with the open port "4000" on the host-machine mapped to the "80 "open port on the conatiner (kali-container) with the "-p" flag

```
docker run -d -p 4000:80 --name kali-mycontainer kali-img
```

Get the containerID
```
docker container list --all
```

Stop the container running in the detached mode "docker stop containerID"
```
docker stop kali-mycontainer
```

### 3. Get inside the container to play with kali OS system linux

```
docker exec -it kali-mycontainer bash
```

### 4.Remove the container in case need

```
docker rm kali-mycontainer
```
### 5.Remove the image in case need
```
docker rmi kali-img
```

### References and Authors
https://docs.docker.com/
