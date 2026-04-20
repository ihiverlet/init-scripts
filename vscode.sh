#!/bin/sh

jq '. + {"workbench.tips.enabled": false }' ${HOME}/.local/share/code-server/User/settings.json > ${HOME}/tmp.settings.json  && mv ${HOME}/tmp.settings.json ${HOME}/.local/share/code-server/User/settings.json
