#!/bin/bash

echo "#####################################"
echo "Starting execution of the script ${0}"
echo "#####################################"


# Start kubedock
if [ -n "$EXTRA_TOOLS_KUBEDOCK" ]; then
    echo "Kubedock support enabled" 
    while [ ! -f /home/user/.kube/config ]; do 
        sleep 1 
    done
    /extra-tools/kubedock server --port-forward  > /extra-tools/kubedock.log 2>&1 &
    echo "Kubedock started" 
else
    echo "Kubedock support disabled" 
fi

# Set Java version
if [ -n "$EXTRA_TOOLS_JAVA_VERSION" ]; then
    echo "EXTRA_TOOLS_JAVA_VERSION set to ${EXTRA_TOOLS_JAVA_VERSION}" 
    source $HOME/.sdkman/bin/sdkman-init.sh && sdk default java ${EXTRA_TOOLS_JAVA_VERSION}
else
    echo "EXTRA_TOOLS_JAVA_VERSION not set" 
fi

echo "#####################################"
echo "Execution completed"
echo "#####################################"
