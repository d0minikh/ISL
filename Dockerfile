FROM telegraf

COPY telegraf.conf /etc/telegraf/telegraf.conf

RUN apt-get update -y && apt-get upgrade -y
RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash
RUN apt-get install speedtest

EXPOSE 8086

CMD ["/usr/local/bin/speedtest", "--accept-license", "--accept-gdpr"]

RUN systemctl restart telegraf

ENV PATH=/etc/telegraf:$PATH