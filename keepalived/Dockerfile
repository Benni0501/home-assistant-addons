FROM benni0501/keepalived:2.3.2

ARG BUILD_ARCH
ARG BUILD_VERSION

LABEL maintainer "Benjamin <benni.kogler@gmail.com>"

ENV LANG C.UTF-8

# Install requirements for add-on
RUN apk add --no-cache jq

# Copy data for add-on
COPY run.sh /run.sh
COPY notify.sh /notify.sh
RUN chmod a+x /notify.sh
RUN chmod a+x /run.sh

ENTRYPOINT [ "/run.sh" ]