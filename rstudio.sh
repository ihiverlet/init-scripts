#!/bin/sh
echo \
"
setHook('rstudio.sessionInit', function(newSession) {
    devtools::install_github("rstudio/rstudioapi")
    message('Activation du dark mode')
    rstudioapi::applyTheme("Dracula")
}, action = 'append')
" >> /home/onyxia/.Rprofile