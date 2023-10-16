FROM docker:20.10.24

ENV PYTHONWARNINGS="ignore::DeprecationWarning"

RUN apk add --no-cache \
    git \
    make \
    libffi-dev \
    openssl-dev \
    gcc \
    libc-dev \
    bash \
    gettext \
    curl \
    wget \
    zip \
    file \
    diffutils

#RUN pip install "pytest<5"
#RUN pip install awsebcli "pyrsistent==0.16.0"
#RUN pip install "docker-compose"

#COPY docker-compose /usr/bin/docker-compose
ADD make-entrypoint /usr/local/bin/make-entrypoint

RUN chmod +x /usr/local/bin/make-entrypoint

WORKDIR /make

RUN git config --global credential.helper cache && \
    git config --global credential.helper 'store --file /make/.git/credentials'

RUN apk add --no-cache coreutils

RUN apk add

ENV OS="Windows_NT"

ENTRYPOINT ["/usr/local/bin/make-entrypoint"]

CMD ["make"]
