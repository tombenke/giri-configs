#!/bin/bash

declare -rx RUNDIR=`dirname ${0}`
declare -rx JSONDIR="${RUNDIR}"
declare -rx SERVER="http://${HOST}:${PORT}/${URI_PREFIX}"

function doCurl {
    echo "executing: curl -X ${1} ${SERVER}${2} -H 'Content-Type: application/json' --data-binary @${JSONDIR}/${3}"
    curl -X ${1} ${SERVER}${2} -H "Content-Type: application/json" --data-binary @${JSONDIR}/${3}
    echo
}

function put {
    doCurl "PUT" $1 $2
}

function post {
    doCurl "POST" $1 $2
}

function get {
    doCurl "GET" $1
}

function delete {
    doCurl "DELETE" $1
}


