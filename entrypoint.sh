#!/bin/sh
source /secrets/${TRANSPORTER_ENVIRONMENT}.env
transporter run --config $TRANSPORTER_CONFIG_FILE $TRANSPORTER_SCRIPT_FILE
