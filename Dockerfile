FROM docker:19.03.8

RUN apk add --no-cache git make py-pip python-dev libffi-dev openssl-dev gcc libc-dev bash gettext curl wget && pip install docker-compose

COPY make-entrypoint /usr/local/bin/

WORKDIR /make

ENTRYPOINT ["make-entrypoint"]

CMD ["make"]
