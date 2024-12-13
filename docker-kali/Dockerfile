# Use an official kali docker image
# https://hub.docker.com/u/kalilinux/
# https://www.kali.org/docs/containers/using-kali-docker-images/
FROM kalilinux/kali-rolling

# https://www.kali.org/docs/installation/installation-sizes/
# installing the 'kali-tools-top10' size aprox (2 GB)
# installing the 'kali-linux-headless' size aprox (5 GB)
RUN apt update && apt -y install kali-tools-top10

ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 80

