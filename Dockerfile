FROM docker:19.03.8

RUN apk add --no-cache \
    git \
    make \
    py-pip \
    python-dev \
    libffi-dev \
    openssl-dev \
    gcc \
    libc-dev \
    bash \
    gettext \
    curl \
    wget \
    diffutils && \
    pip install docker-compose

COPY make-entrypoint /usr/local/bin/
COPY docker-compose-make /opt/docker-compose-make

WORKDIR /make

RUN git config --global credential.helper cache && \
    git config --global credential.helper 'store --file /make/.git/credentials'

ENTRYPOINT ["make-entrypoint"]

CMD ["make"]
