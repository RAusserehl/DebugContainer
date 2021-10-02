
FROM alpine:3.14

# Labels
LABEL maintainer="rene.ausserehl@bdosecurity.de"
ARG BUILD_DATE
ARG VCS_REF
ARG BUILD_VERSION

# Labels.
LABEL org.label-schema.schema-version="0.1"
LABEL version="0.1"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name="DebugContainer"
LABEL org.label-schema.description="A secure debug container for Kubernetes and running PODs"
LABEL org.label-schema.url="https://bdosecurity.de"
LABEL org.label-schema.vcs-url="https://github.com/RAusserehl/DebugContainer"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vendor="BDO Cyber Security"
LABEL org.label-schema.version=$BUILD_VERSION
LABEL org.label-schema.docker.cmd="docker run -v"

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk --update add --no-cache 
RUN apk add --update \
    bash \
    curl \
    jq \
    busybox-extras \
    bind-tools \
    tcpdump \
    openssl \
    vim \
    nmap \
    iputils \
    tcptraceroute \
    strace \
    bind-tools \
    socat \
    netcat-openbsd \
    mtr \
    iperf \
    tcpdump \
    busybox-extras \
    openssl \
    ca-certificates \
    python3 \
    less \
    py-pip \
    mailcap \
    groff \
    bash-completion \
    sslscan \
    wbox \
    knock 

RUN pip3 install --upgrade pip setuptools httpie 

RUN apk del .build-deps


CMD [ "tail", "-f", "/dev/null" ]