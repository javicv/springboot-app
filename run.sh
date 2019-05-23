#!/bin/sh

echo "Downloading artifact ${ARTIFACT_URL}"
wget -q -O app.jar ${ARTIFACT_URL}

java ${JAVA_OPTS_EXT} -jar app.jar ${JAVA_PARAMETERS}
