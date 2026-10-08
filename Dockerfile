FROM ubuntu:22.04
LABEL maintainer="Lapio Plays"

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en

RUN apt-get -y update && \
    apt-get install -y curl && \
    curl -sLk https://github.com/tsl0922/ttyd/releases/download/1.7.7/ttyd.x86_64 \
    -o /usr/local/bin/ttyd && \
    chmod +x /usr/local/bin/ttyd && \
    apt-get purge --auto-remove -y curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY /lapio-plays.sh /lapio-plays.sh

RUN chmod 744 /lapio-plays.sh

EXPOSE 8080

CMD ["/bin/bash", "/lapio-plays.sh"]
