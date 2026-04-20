#!/bin/sh

jq '. + {"workbench.startupEditor": "terminal" }' ${HOME}/.local/share/code-server/User/settings.json > ${HOME}/tmp.settings.json  && mv ${HOME}/tmp.settings.json ${HOME}/.local/share/code-server/User/settings.json
