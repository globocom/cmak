# Copyright (c) 2020, Globo (https://github.com/globocom)
# License: BSD-3-Clause
# Automate Build = Success
FROM ubuntu:latest

MAINTAINER GloboDevops

RUN set -xe \
    && apt update \
    && apt-get install unzip \
    && apt install -y openjdk-11-jre-headless curl wget 

WORKDIR /opt/cmak

RUN set -xe \
    && mkdir src \
    && curl -sSL https://github.com/yahoo/CMAK/archive/3.0.0.5.tar.gz | tar xz --strip 1 -C src \
    && cd src \
    && ./sbt clean dist \
    && cd .. \
    && unzip /opt/cmak/src/target/universal/cmak-3.0.0.5.zip \
    && rm -rf src

VOLUME /opt/cmak/conf

EXPOSE 9000

ENTRYPOINT ["/opt/cmak/cmak-3.0.0.5/bin/cmak"]
CMD ["-Dhttp.port=9000", "-Dpidfile.path=/dev/null"]

HEALTHCHECK CMD curl -f http://127.0.0.1/api/health || exit 1
