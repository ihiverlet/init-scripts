#!/bin/sh

echo \
"
setHook('rstudio.sessionInit', function(newSession) {
    rstudioapi::applyTheme('Dracula')
    message('test')
}, action = 'append')

" >> /home/onyxia/.Rprofile

chown root:users /home/onyxia/.Rprofile
