#!/bin/sh

#curl -s -k -H "Authorization: Bearer ${ROX_API_TOKEN}" https://${CENTRAL}/api/cli/download/roxctl-linux --output roxctl
#chmod +x ./roxctl

#export ROX_API_TOKEN=${ROX_API_TOKEN}
./roxctl deployment check --insecure-skip-tls-verify -e ${CENTRAL} --file ${KUBEYAML}

exit $?
