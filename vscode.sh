export DARK_MODE='TRUE'
jq '.|= . + {"workbench.colorTheme": "Default Dark Modern", }' ${HOME}/.local/share/code-server/User/settings.json  
