#!/bin/sh

echo \
"
setHook('rstudio.sessionInit', function(newSession) {
    rstudioapi::applyTheme("Dracula")
}, action = 'append')

" >> /home/onyxia/.Rprofile

chown root:users /home/onyxia/.Rprofile
