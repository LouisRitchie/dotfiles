# Navigation and ergonomics
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../../.."
alias hu="vim"
alias l="ls -A --group-directories-first"
alias xx='exit'
alias g="rgrep --exclude-dir node_modules"
alias s="cd ~/repos/snake"

# Git
function gc() { npm run lint; git commit -m "$1"; }
alias gm="git merge"
alias gs="git status"
alias ga="git add -A"
alias ag="git add ."
alias gp="git push"
alias gu="git pull"
alias gout="git checkout"
alias gb="git branch"
alias gl="git log"
alias gd="git diff"
alias gt="git stash"
alias gta="git stash apply"
alias gr="git reset ."

# Java
alias jc="javac *.java -d ."
function j() { java -cp . "$1.$1"; }

# Latex
function te() { latex "$1".tex && dvipdf "$1".dvi; }

# Restart Linux's buggy network manager
alias netrestart="sudo systemctl restart network-manager.service"

# Vim
alias showswap="find . -name '.*.swp'"
alias killswap="find . -name '.*.swp' | xargs rm"

# Connect and move files to AWS EC2.
alias a_connect="ssh -i $EC2_KEY $EC2_DNS"
a_copy () {
  scp -i $EC2_KEY -r $1 $EC2_DNS:$1;
}

# Create a new blank text document with the date and time as the filename.
newJournal () { gvim ~/journal/$(date +%y-%m-%d_%H.%M.txt); }
