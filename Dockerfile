# Pull base spurce OS
FROM ubuntu

# Update repos
RUN apt-get update
RUN apt-get install -y apache2 nano curl

# Set apache2 ro start on boot
RUN echo 'service apache2 start' >> /etc/bash.bashrc

# Populate the apache html dictory with the index.html file with hello world
ADD index.html /var/www/html/
