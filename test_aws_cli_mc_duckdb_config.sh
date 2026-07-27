#!/bin/sh

CONFIG_FILE="${HOME}/.aws/config"

first_profile=$(
    awk '
        /^\[profile / {
            gsub(/^\[profile /, "")
            gsub(/\]$/, "")
            print
            exit
        }
        /^\[default\]/ {
            print "default"
            exit
        }
    ' "$CONFIG_FILE"
)

duckdb -c "CREATE OR REPLACE PERSISTENT SECRET s3_onyxia_connection(TYPE S3, PROVIDER credential_chain, PROFILE '$first_profile');" 




CONFIG="$HOME/.aws/config"
CREDS="$HOME/.aws/credentials"

profiles=$(
{
    awk '
        /^\[default\]/ { print "default" }
        /^\[profile / {
            gsub(/^\[profile /,"")
            gsub(/\]$/,"")
            print
        }
    ' "$CONFIG"

    awk '
        /^\[/ {
            gsub(/^\[/,"")
            gsub(/\]$/,"")
            print
        }
    ' "$CREDS"
} | sort -u
)

for profile in $profiles; do
    access_key=$(aws configure get aws_access_key_id --profile "$profile")
    secret_key=$(aws configure get aws_secret_access_key --profile "$profile")
    region=$(aws configure get region --profile "$profile")
    endpoint=$(aws configure get endpoint_url --profile "$profile")
    session_token=$(aws configure get aws_session_token --profile "$profile")

    variable_name="MC_HOST_${profile}"

    scheme=${endpoint%%://*}
    host=${endpoint#*://}
    value="${scheme}://${access_key}:${secret_key}${session_token:+:${session_token}}@${host}"

    export "$variable_name=$value"
    printf 'export %s=%s\n' "$variable_name" "$(printf '%s' "$value")"

done
