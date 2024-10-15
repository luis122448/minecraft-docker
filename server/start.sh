#!/bin/bash

MEMORY="2G"

FORGE_JAR="forge-1.20.1-47.3.11-installer.jar"

java -Xmx$MEMORY -Xms$MEMORY -jar $FORGE_JAR --installServer nogui 