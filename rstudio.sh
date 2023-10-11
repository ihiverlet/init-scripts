#!/bin/sh
WORK_DIR=/home/onyxia/work
install2.r here
echo \
"
.First = function(){
  rstudioapi::applyTheme("Dracula")
}
" >> /home/onyxia/.Rprofile