FROM python:3.8.3-slim-buster

RUN apt-get update && apt-get install -y --no-install-recommends unzip wget \
    && export WATCHMAN_VER=v2020.07.13.00 \
    && export WATCHMAN_FILENAME=watchman-$WATCHMAN_VER-linux \
    && wget -O /tmp/$WATCHMAN_FILENAME.zip https://github.com/facebook/watchman/releases/download/$WATCHMAN_VER/watchman-$WATCHMAN_VER-linux.zip \
    && cd /tmp \
    && cd /tmp \
    && unzip $WATCHMAN_FILENAME.zip \
    && mkdir -p /usr/local/{bin,lib} /usr/local/var/run/watchman \
    && cp $WATCHMAN_FILENAME/bin/* /usr/local/bin \
    && cp $WATCHMAN_FILENAME/lib/* /usr/local/lib \
    && chmod 755 /usr/local/bin/watchman \
    && chmod 2777 /usr/local/var/run/watchman \
    && rm -rf /tmp/watchman* \
    && unset WATCHMAN_VER WATCHMAN_FILENAME
