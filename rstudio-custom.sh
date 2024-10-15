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

# Set CRAN mirror
options(repos = c(CRAN = 'https://cran.rstudio.org'))

# Customize console prompt, digit display, and continuation prompt
options(
  prompt = 'R> ',      # Custom prompt
  digits = 4,          # Limit numeric precision to 4 digits
  continue = '+++ '    # Continuation prompt
)


# In the context of a console call, the width of the output is set to 120;
if (interactive()) {
options(width = 120)
}

# The .First function allows specific operations to be performed at the start of the R session (here, printing text)

.First <- function(){
cat('\n Welcome \n\n')
}
" >> /home/onyxia/.Rprofile
