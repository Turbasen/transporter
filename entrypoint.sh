#!/bin/sh
source /secrets/production.env
transporter run --config $TRANSPORTER_CONFIG_FILE $TRANSPORTER_SCRIPT_FILE
