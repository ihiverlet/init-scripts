#!/bin/bash

jq '. + {"zotero_libraries": "Web"}' ${HOME}/.config/rstudio/rstudio-prefs.json > ${HOME}/tmp.rstudio-prefs.json  && mv ${HOME}/tmp.rstudio-prefs.json ${HOME}/.config/rstudio/rstudio-prefs.json
