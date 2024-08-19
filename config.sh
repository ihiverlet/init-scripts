#!/bin/sh

#configure bashrc to add aliases
sudo tee -a /etc/bash.bashrc << EOT
# kube aliases
alias k='kubectl'
alias kubetcl='kubectl'
alias ka='kubectl apply '
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdel='kubectl delete'
alias kl='kubectl logs'
alias kex='kubectl exec -it'
alias kpf='kubectl port-forward'

# helm aliases
alias hl='helm ls'
alias hi='helm install'
alias huni='helm uninstall'
alias hu='helm upgrade'

# git aliases
alias gc='git clone'
alias gd='git diff'
alias gcm='git commit -m'
alias gs='git status'
alias gl='git logs'
alias glo='git logs --oneline'
alias gp='git push'
alias ga='git add'

# divers
alias stp='sudo !!'

EOT

# config vim
sudo tee -a /etc/vim/vimrc << EOT
filetype plugin indent on 
set showmatch
set incsearch
set mouse=a
set number
syntax on
set incsearch
EOT