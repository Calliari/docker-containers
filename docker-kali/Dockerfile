# Use an official kali docker image
# https://hub.docker.com/u/kalilinux/
# https://www.kali.org/docs/containers/using-kali-docker-images/
FROM kalilinux/kali-rolling

# installing the 'kali-linux-headless' is going to take time aprox (2 hours)
RUN apt update && apt -y install kali-linux-headless

ENTRYPOINT ["tail", "-f", "/dev/null"]

EXPOSE 80

