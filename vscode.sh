#!/bin/sh

jq '. + {"workbench.colorTheme": "Default Dark Modern" }' ${HOME}/.local/share/code-server/User/settings.json > ${HOME}/tmp.settings.json  && mv ${HOME}/tmp.settings.json ${HOME}/.local/share/code-server/User/settings.json
