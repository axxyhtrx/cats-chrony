FROM alpine:latest
RUN apk add openntpd
ADD ntpd.conf /etc/ntpd.conf
EXPOSE 123/udp
ENTRYPOINT ["ntpd"]
CMD ["-d" ,"-f", "/etc/ntpd.conf", "-s"]
