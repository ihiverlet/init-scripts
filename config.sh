#!/bin/sh

sudo apt update

#configure bashrc to add aliases
sudo tee -a /etc/bash.bashrc << EOT
# kube aliases
alias k='kubectl'
alias kubetcl='kubectl'
alias ka='kubectl apply '
alias kg='kubectl get'
alias kga='kubectl get all'
alias kgi='kubectl get ingress'
alias kgp='kubectl get pods'
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdel='kubectl delete'
alias kl='kubectl logs'
alias kex='kubectl exec -it'
alias kpf='kubectl port-forward'

# helm aliases
alias h='helm'
alias hl='helm ls'

# keep kube & helm autocompletion with k & h aliases
complete -o default -F __start_kubectl kubectl
complete -o default -F __start_kubectl kubetcl
complete -o default -F __start_kubectl k

complete -o default -F __start_helm helm
complete -o default -F __start_helm h

# watch to keep autocompletion when using
alias w='watch '
alias watch='watch '

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
alias stp='sudo !! '

# install gh cli
sudo apt install gh


# configure git
git config --global diff.algorithm histogram
git config --global push.autoSetupRemote true

# try 
git config --global help.autocorrect prompt
git config --global merge.conflictstyle zdiff3



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

#add extension to vscode 
if command -v code-server; then
  code-server --install-extension dvirtz.parquet-viewer
fi

pip install pre-commit
