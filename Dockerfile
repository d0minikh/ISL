FROM telegraf
RUN apt-get update -y && apt-get upgrade -y
RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash
RUN apt-get install speedtest
EXPOSE 8086
CMD ["/usr/local/bin/speedtest", "--accept-license", "--accept-gdpr"]
ENV PATH=/etc/telegraf:$PATH