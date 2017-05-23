
# For using it you do

```
sudo -i
```

## install docker on ubuntu 

```
sudo apt-get install docker.io -y
```

##  Add this for docker interface network start to using it for apache
```
sudo echo 'auto docker0
iface docker0 inet static
      address 192.168.10.102
      netmask 255.255.255.0' >> /etc/network/interfaces
```

## Put the interface up for docker
```
sudo ifup docker0
```

## Run this CMD to build the container

```
sudo docker build -t apache-a . 
```
## Run this CMD if you want to get the image ID

```
sudo docker images
```

## Run this CMD to run the image that was built
```
sudo docker run  --net=host -d -t apache-a
```
## To check if the apache2 is running correctly just go to you browser
type http://development.local

## …or create a new repository on the command line

```
sudo -i 
echo "# simple-docker-apache" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Calliari/simple-docker-apache.git
git push -u origin master
```
