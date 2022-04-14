FROM telegraf

COPY telegraf.conf /etc/telegraf/telegraf.conf

RUN curl -s https://install.speedtest.net/app/cli/install.deb.sh | bash
RUN apt-get install speedtest