FROM quay.io/devfile/universal-developer-image:latest


# Install kubedock
USER 0

ENV KUBEDOCK_VERSION 0.11.0
ENV CONTAINER_HOST tcp://127.0.0.1:2475
ENV TESTCONTAINERS_RYUK_DISABLED true
ENV TESTCONTAINERS_CHECKS_DISABLE true
RUN curl -L https://github.com/joyrex2001/kubedock/releases/download/${KUBEDOCK_VERSION}/kubedock_${KUBEDOCK_VERSION}_linux_amd64.tar.gz | tar -C /usr/local/bin -xz \
    && chmod +x /usr/local/bin/kubedock

CMD while [ ! -f /home/user/.kube/config ]; do sleep 1; done; kubedock server --port-forward

USER 10001

# Use sdk man to select a specific Java version
RUN source $HOME/.sdkman/bin/sdkman-init.sh && sdk default java 17.0.3-tem


# New tool

RUN curl ...
