#!/bin/sh
if [ -n "$TRANSPORTER_ENVIRONMENT" ]; then
    source /secrets/${TRANSPORTER_ENVIRONMENT}.env
fi

transporter run --config $TRANSPORTER_CONFIG_FILE $TRANSPORTER_SCRIPT_FILE
