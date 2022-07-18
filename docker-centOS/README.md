How to use this docker contatiner


Create image using this directory's Dockerfile with a tag "centos7"
```
docker build -t centos7 .
```

Spin up the conatiner using this directory's Dockerfile image "centos7"
```
docker run --name centos7 -it -d centos7
```


Build the images and run the container "one go"
```
docker build -t centos7 ./ && docker run --name centos7 -it -d centos7
```

Connect to the container 
```
docker exec -it centos7 bash
```