#!/bin/sh

env_vars=("NO_PROXY" "no_proxy" "HTTP_PROXY" "http_proxy" "HTTPS_PROXY" "https_proxy")

if [[ $SUDO -eq 0 ]]; then
    for var in "${env_vars[@]}"; do
        if [[ -n "${!var}" ]]; then
        sudo sh -c "printf '%s=\"%s\"\n' $var \"${!var}\" >> /etc/environment"
            if command -v R; then
                sudo sh -c "printf '%s=\"%s\"\n' $var \"${!var}\" >> ${R_HOME}/etc/Renviron.site"
            fi
        fi
    done
fi
