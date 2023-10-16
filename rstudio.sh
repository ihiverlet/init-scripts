#!/bin/sh

Sys.setenv('DARK_MODE'='TRUE')
echo "if (Sys.getenv('DARK_MODE')=='TRUE'){
    setHook('rstudio.sessionInit', function(newSession) {
        rstudioapi::applyTheme("Dracula")
    }, action = 'append')
}" >> ${R_HOME}/etc/Rprofile.site
