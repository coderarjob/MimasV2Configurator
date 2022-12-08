#!/bin/sh
# -----------------------------------------------------------------------------
# Unix Start script
# -----------------------------------------------------------------------------
SELF=$0
LINK=$(readlink $0) && SELF=$LINK
BASEDIR=$(dirname "$SELF")
java -jar MimasV2Configurator.jar
