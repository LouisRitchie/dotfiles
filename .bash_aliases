# personal navigation/ergonomic aliases
alias soc="cd ~/Documents/school/csc320"
alias sos="cd ~/Documents/school/seng265"
alias c="cd ~/c"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../../.."
alias hu="vim"
alias l="ls -A"
alias b="cd -"
alias ayy="fortune | cowsay | lolcat"
alias re="cd ~/repos/web-app"

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
# A handy Vim autocommand for auto compiling java files:
# au BufWritePost *.java !javac *.java -d . && java -cp . NAME.NAME

# latex aliases
function te() { latex "$1".tex && dvipdf "$1".dvi; }

# seng265
alias put_asn2="scp -r ~/Documents/school/seng265/assignment_02/ louisr@linux.csc.uvic.ca:~/assignment_02_home/"
alias put_asn3="scp -r ~/Documents/school/seng265/assignment_03/ louisr@linux.csc.uvic.ca:~/assignment_03_home/"
alias get_asn2="scp -r louisr@linux.csc.uvic.ca:~/assignment_02/ ~/Documents/school/seng265/assignment_02_school/"
alias get_asn3="scp -r louisr@linux.csc.uvic.ca:~/assignment_03/ ~/Documents/school/seng265/assignment_03_school/"

# restart Linux's buggy network manager
alias netrestart="sudo systemctl restart network-manager.service"

# deploy various websites, and access various servers.
alias depvic="scp -r ~/repos/victoriaggj_landing/* tito@deppth.me:/var/www/victoriaggj.com/html/"
alias depwill="sudo scp -r ~/repos/detectify/* tito@deppth.me:/var/www/deppth.me"
alias ssh1="ssh tito@deppth.me"
alias ssh2="ssh louisr@linux.csc.uvic.ca"
