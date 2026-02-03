#!/bin/bash
# Set KEYCLOAK_PATH if not already set, so the RADIUS plugin finds the config (issue #866)
export KEYCLOAK_PATH="${KEYCLOAK_PATH:-/opt/keycloak}"
# Source the radius config script to ensure exported variables are available
source /opt/radius/scripts/radius-keycloak.sh
/opt/keycloak/bin/kc.sh $*
