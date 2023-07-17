#!/bin/bash

# Start kubedock
if [ -n "$EXTRA_TOOLS_KUBEDOCK" ]; then
    while [ ! -f /home/user/.kube/config ]; do sleep 1; done; kubedock server --port-forward
fi

# Set Java version
if [ -n "$EXTRA_TOOLS_JAVA_VERSION" ]; then
    echo "EXTRA_TOOLS_JAVA_VERSION set to ${EXTRA_TOOLS_JAVA_VERSION}" 
    source $HOME/.sdkman/bin/sdkman-init.sh && sdk default java ${EXTRA_TOOLS_JAVA_VERSION}
else
    echo "EXTRA_TOOLS_JAVA_VERSION not set" 
fi
