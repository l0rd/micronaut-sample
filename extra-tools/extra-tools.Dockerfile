FROM registry.access.redhat.com/ubi8/ubi:latest

USER 0

COPY /start-extra-tools.sh /copy-extra-tools.sh /

# Kubedock
RUN mkdir /kubedock
ENV KUBEDOCK_VERSION 0.11.0
RUN curl -L https://github.com/joyrex2001/kubedock/releases/download/${KUBEDOCK_VERSION}/kubedock_${KUBEDOCK_VERSION}_linux_amd64.tar.gz | tar -C /kubedock -xz \
    && chmod +x /kubedock/kubedock

# Set permissions to allow arbitrary users to read
RUN chgrp -R 0 /kubedock/ && chmod -R g=u /kubedock /start-extra-tools.sh /copy-extra-tools.sh
