#!/bin/sh

jq '. + {"workbench.welcomePage.experimentalOnboarding": false }' ${HOME}/.local/share/code-server/User/settings.json > ${HOME}/tmp.settings.json  && mv ${HOME}/tmp.settings.json ${HOME}/.local/share/code-server/User/settings.json
