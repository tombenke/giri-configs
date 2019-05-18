#!/bin/bash
#
# giri system initialization
#
# Tamás Benke
#

source curl_functions.sh

declare -rx SCRIPT_DESCRIPTION="giri system initialization"
declare -rx RUNDIR=`dirname ${0}`

# Either source the required environment variables from the `local.env` file
# or set it on other way in advance, before starting the script.
. ${RUNDIR}/local.env

# Echo some hints on what is happening
echo "Running ${SCRIPT_DESCRIPTION} script in ${RUNDIR}"
echo "Use '${JSONDIR}' as base folder for data JSON config files"

echo "Create system..."
put "/systems/2a1152ee-4d77-4ff4-a811-598555937625" "system_hedgehog-garden.json"

echo "Create Clusters..."
put "/clusters/2a1152ee-4d77-4ff4-a811-598555937625" "cluster_open-air.json"
put "/clusters/d64d2325-c7b0-4bc7-9178-8ec76ac7355c" "cluster_politunnel.json"

echo "See the systems created:"
get "/systems"

echo "See the clusters created:"
get "/clusters"
