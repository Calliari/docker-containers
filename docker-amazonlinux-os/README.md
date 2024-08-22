How to use this docker contatiner


Create image using this directory's Dockerfile with a tag "amazonlinux:2"
```
docker build -t amazonlinux .
```

Spin up the conatiner using this directory's Dockerfile image "amazonlinux"
```
docker run --name amazonlinux -it -d amazonlinux
```


Build the images and run the container "one go"
```
docker build -t amazonlinux ./ && docker run --name amazonlinux -it -d amazonlinux
```

Running the container and be able to connect to the host machine from inside the container
```
docker run --name amazonlinux -it --add-host=host.docker.internal:host-gateway -d amazonlinux
```

Restart the conatiner if it's "Exited": docker ps -a
```
docker restart amazonlinux
```

Connect to the container
```
docker exec -it amazonlinux bash
```
