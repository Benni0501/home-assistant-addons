FROM benni0501/keepalived:latest

ARG BUILD_ARCH
ARG BUILD_VERSION

LABEL maintainer "Benjamin <benni.kogler@gmail.com>"

ENV LANG C.UTF-8

# Install requirements for add-on
RUN apk add --no-cache jq

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]