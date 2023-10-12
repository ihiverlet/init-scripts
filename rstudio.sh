#!/bin/sh

echo \
"
setHook('rstudio.sessionInit', function(newSession) {
    message('Activation du dark mode')
    rstudioapi::applyTheme("Dracula")
}, action = 'append')

" >> /home/onyxia/.Rprofile

chown root:users /home/onyxia/.Rprofile
