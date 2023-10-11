#!/bin/sh
WORK_DIR=/home/onyxia/work
echo \
"
setHook('rstudio.sessionInit', function(newSession) {
 if (newSession)
  {
    rstudioapi::applyTheme("Dracula")
  }
}, action = 'append')

setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '${WORK_DIR}'))
  {
    message('Activation du dark mode')
    rstudioapi::applyTheme("Dracula")
    
  }
}, action = 'append')
" >> /home/onyxia/.Rprofile