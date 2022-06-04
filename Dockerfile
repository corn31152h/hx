FROM alpine

ADD 1.sh /1.sh
ADD kano /usr/local/bin/kano

RUN apk update && \
    apk add -f --no-cache ca-certificates wget unzip bash && \
    chmod 777 /1.sh && \
    chmod 777 /usr/local/bin/kano

CMD /1.sh
