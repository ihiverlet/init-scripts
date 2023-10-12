#!/bin/sh
WORK_DIR=/home/onyxia/work

echo \
"
setHook('rstudio.sessionInit', function(newSession) {
    devtools::install_github("rstudio/rstudioapi")
    message('Activation du dark mode')
    rstudioapi::applyTheme("Dracula")
}, action = 'append')

setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '${WORK_DIR}'))
  {
    devtools::install_github("rstudio/rstudioapi")
    message('Activation du dark mode')
    rstudioapi::applyTheme("Dracula")
  }
}, action = 'append')
" >> /home/onyxia/.Rprofile
