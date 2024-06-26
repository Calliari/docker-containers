How to use a docker container

In this repo there containers for different purposes and tests

Clone this repo, change to the directory where the Dockerfile is sitting and spin up the container.

### Sample useful docker commands
```
docker build -t friendlyname .                # Create an image using this directory's Dockerfile with the tag "friendlyname"
docker run -p 4000:80 friendlyname            # Run "friendlyname" mapping port 4000 to 80
docker run -d -p 4000:80 friendlyname         # Same thing, but in detached mode
docker run --name server1 --hostname server1  # Run the container with name "server1" and add the hostname to the container as "server1"
docker ps                                     # See a list of all running containers
docker stop <hash>                            # Gracefully stop the specified container
docker ps -a                                  # See a list of all containers, even the ones not running
docker kill <hash>                            # Force shutdown of the specified container
docker rm <hash>                              # Remove the specified container from this machine
docker rm $(docker ps -a -q)                  # Remove all containers from this machine
docker images -a                              # Show all images on this machine
docker rmi <imagename>                        # Remove the specified image from this machine
docker rmi $(docker images -q)                # Remove all images from this machine
docker login                                  # Log in this CLI session using your Docker credentials
docker tag <image> username/repository:tag    # Tag <image> for upload to registry
docker push username/repository:tag           # Upload a tagged image to a registry
docker run username/repository:tag            # Run image from a registry
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


References and Authors
- https://docs.docker.com/
- https://docs.docker.com/reference/cli/docker/container/run/
