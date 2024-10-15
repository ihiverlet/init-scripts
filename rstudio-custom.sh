#!/bin/sh

# This init script customizes the Rsudio UI theme (here with
# Merbivore) and sets the console to the right
# Expected parameters : None

echo \
"
setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '${WORKSPACE_DIR}'))
  {
    # For a slick dark theme (⌐■_■)
    rstudioapi::applyTheme('Dracula')
    # Console on the right
    rstudioapi::executeCommand('layoutConsoleOnRight')
  }
}, action = 'append')
" >> /home/onyxia/.Rprofile
