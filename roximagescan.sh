#!/bin/sh

#curl -s -k -H "Authorization: Bearer ${ROX_API_TOKEN}" https://${CENTRAL}/api/cli/download/roxctl-linux --output roxctl
sudo chmod +x ./roxctl

echo "scanning image ${IMAGE} at server ${CENTRAL}"
sudo ./roxctl image check --insecure-skip-tls-verify -e ${CENTRAL} --image ${IMAGE}

exit $?
