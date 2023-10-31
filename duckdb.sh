#!/bin/sh
if [[ -n $AWS_S3_ENDPOINT ]] && command -v duckdb ; then 
    echo -e "-- Duck head prompt
.prompt '🦆 '
-- Set s3 context
CALL load_aws_credentials();
SET s3_endpoint='$AWS_S3_ENDPOINT';" > ${HOME}/.duckdbrc 
fi
