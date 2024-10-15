#!/bin/sh 

echo \
"

setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '/home/onyxia/work'))
  {
    message('Activation du projet RStudio')
    rstudioapi::openProject('')
    # For a dark theme 
    rstudioapi::applyTheme('Dracula')
    # Console on the right
    rstudioapi::executeCommand('layoutConsoleOnRight')
    options(scipen=10)
    options(editor='vim')
    #Modify prompt cli and modify the number of decimals default
    options(prompt=\"R> \", digits=4)
    options(continue= \"+++ \")
    if (interactive()) {
      options(width = 120)
    }
    
    # Function to execute at R session startup
    .First <- function(){
      cat('Start')
    }
  }
}, action = 'append')

" >> /home/onyxia/.Rprofile
