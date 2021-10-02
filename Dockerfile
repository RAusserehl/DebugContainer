FROM ubuntu:

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

CMD ["/mnt/tool/tool.sh"]