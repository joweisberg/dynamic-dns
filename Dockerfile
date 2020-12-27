FROM alpine
MAINTAINER Jonathan Weisberg <jo.weisberg@gmail.com>

RUN apk --no-cache --update add bash curl

WORKDIR /root

COPY dyndns.sh /root/dyndns.sh
RUN chmod +x /root/dyndns.sh

CMD ["/bin/bash", "/root/dyndns.sh"]