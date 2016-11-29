#!/bin/bash
#
# giri system initialization
#
# Tamás Benke
#

declare -rx SCRIPT_DESCRIPTION="giri system initialization"
declare -rx RUNDIR=`dirname ${0}`
declare -rx FIXTURES="../lib/fixtures/"
declare -rx HOST=localhost
declare -rx PORT=3000
declare -rx URI_PREFIX="giri"
declare -rx SERVER="http://${HOST}:${PORT}/${URI_PREFIX}"
declare -rx JSONDIR="${RUNDIR}/${FIXTURES}"

# Either source the required environment variables from the `local.env` file
# or set it on other way in advance, before starting the script.
#. ${RUNDIR}/local.env

# Echo some hints on what is happening
echo "Running ${SCRIPT_DESCRIPTION} script in ${RUNDIR}"
echo "Use '${JSONDIR}' as base folder for data JSON config files"

# Create system
curl -X PUT ${SERVER}/systems/2a1152ee-4d77-4ff4-a811-598555937625 \
    -H "Content-Type: application/json" \
    --data-binary @${JSONDIR}/updateSystemReq.json

# Create Clusters
curl -X PUT ${SERVER}/cluesters/2a1152ee-4d77-4ff4-a811-598555937625 \
    -H "Content-Type: application/json" \
    --data-binary @${JSONDIR}/updateClusterReq.json


# See the results
curl ${SERVER}/systems

