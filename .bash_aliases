# change directories
alias so="cd Documents/school"
alias sos="cd Documents/school/seng265"
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
alias jc="javac *.java -d ."
function j() { java -cp . "$1.$1"; }
function fuck() { var="$1"."$1"; }

# latex aliases
function te() { latex "$1".tex && dvipdf "$1".dvi; }

# personal aliases
alias hu="vim"
alias l="ls -A"
alias ssh1="ssh angus@victoriaggj.com"
alias ssh2="ssh tito@deppth.me"
alias depvic="scp -r ~/repos/victoriaggj_landing/* angus@victoriaggj.com:~/repos/victoriaggj_landing/"

# uvic Aero navigation aliases
alias aero="cd ~/repos/aero/web-clients"

alias netrestart="sudo systemctl restart network-manager.service"

alias depwill="sudo scp -r ~/repos/detectify/* tito@deppth.me:/var/www/deppth.me"

# for use with java in vim:
# au BufWritePost *.java !javac *.java -d . && java -cp . NAME.NAME