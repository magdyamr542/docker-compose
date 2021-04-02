FROM ubuntu:18.04
COPY ./ /app
RUN apt-get update -y && apt-get upgrade -y && apt install iputils-ping -y && apt install netcat -y
EXPOSE 1234
ENTRYPOINT [ "bash" , "/app/shared/nc.sh" ]