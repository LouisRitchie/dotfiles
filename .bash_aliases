# change directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../../.."

# git aliases
function gc() { git commit -m "$1"; }
function gm() { git merge "$1"; }
function clone() { git clone https://github.com/"$1"/"$2".git; }
alias gs="git status"
alias ga="git add -A"
alias gp="git push"
alias gu="git pull"
alias gout="git checkout"
alias gb="git branch"
alias gl="git log"
alias gd="git diff"
alias gt="git stash"
alias gta="git stash apply"

# java aliases
alias j="java"
alias jc="javac"

# latex aliases
function te() { latex "$1".tex && dvipdf "$1".dvi; }

# personal aliases
alias hu="vim"
alias l="ls -A"

# uvic Aero navigation aliases
alias aero="cd ~/repos/aero/web-clients"

alias netrestart="sudo systemctl restart network-manager.service"
