#!/bin/sh 

echo \
"
setHook('rstudio.sessionInit', function(newSession) {
  if (newSession && identical(getwd(), '${WORKSPACE_DIR}'))
  {
    message('Activation du projet RStudio')
    rstudioapi::openProject('${PROJECT_DIR}')
    # For a dark theme 
    rstudioapi::applyTheme('Dracula')
    # Console on the right
    rstudioapi::executeCommand('layoutConsoleOnRight')


    options(scipen=10)
    options(editor=\"vim\")
    # define a default mirror 
    options(repos = c(CRAN = \"https://cran.rstudio.org\"))
    #Modify prompt cli and modify the number of decimals default
    options(prompt=\"R> \", digits=4)
    options(continue= \"+++ \")
    if (interactive()) {
    options(width = 120)
      }

    # Function to execute at R session startup
    .First <- function(){
    cat("\n Let\'s start !\n\n")
    }

    # Function to execute at R session ending
    .Last <- function(){
    cat("\n Good bye...\n\n")
    }


}, action = 'append')
" >> /home/onyxia/.Rprofile
