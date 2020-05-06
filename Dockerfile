FROM docker:19.03.8

RUN apk add --no-cache git make

COPY make-entrypoint /usr/local/bin/

WORKDIR /make

ENTRYPOINT ["make-entrypoint"]

CMD ["make"]
