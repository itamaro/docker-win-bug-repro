FROM buildpack-deps:jessie
ARG DEBIAN_FRONTEND=noninteractive
COPY node.tar.gz /tmp/install/
RUN tar -xf /tmp/install/node.tar.gz -C /tmp/install \
    && cd /tmp/install/node \
    && ./install-nodejs.sh \
    && cd /tmp \
    && rm -rf /tmp/install
