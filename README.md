
# For using it you do 

This command is for ubuntu if you are having permissions errors so with this CMD you will "acting as a root"
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


# Info about how to use this container

* Just pull the container from this repo

``` 
docker pull caliari/ubuntu-apache 
```

* The the image name and the image ID

``` 
sudo docker images 
```

* Grab the image ID from this repo "caliari/ubuntu-apache"  and replace the imageID

``` 
sudo docker run --net=host -d -t imageID 
```

* ##### To check if the apache2 is running correctly just go to you browser

http://development.local

================== END ===============


## If you want to create a new repository from the command line

```
sudo -i 
echo "# simple-docker-apache" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Calliari/simple-docker-apache.git
git push -u origin master
```
