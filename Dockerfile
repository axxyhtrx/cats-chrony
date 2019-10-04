FROM alpine:latest
<<<<<<< HEAD

RUN apk add --no-cache chrony
COPY ./crony.conf /etc/chrony/chrony.conf
=======
RUN apk add ntpd
ADD ntpd.conf /etc/ntpd.conf
>>>>>>> 5e25827acc95f432e069db30dc75e48430c1de64
EXPOSE 123/udp

ENTRYPOINT [ "/usr/sbin/chronyd", "-d", "-s"]
