function grepai {
    grep -rniI $1 *
}

function grepaix {
    grep -rniI --exclude-dir=$2 $1 *
}

# docker tools
alias dc='docker-compose'
alias dclr='docker system prune'
alias kb='kubectl'
alias kbps='kb get pods --all-namespaces'
source <(kubectl completion bash)
complete -F __start_kubectl kb


# z jump
source ~/.rupa.z.sh

# some useful alias from oh-my-zsh
## system operation
alias 1='cd -'
alias _='sudo'
alias l='ls -lah'
alias ll='ls -lh'
## git
alias g='git'
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gco='git checkout'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gd='git diff'
alias gps='git push'
alias gpl='git pull'
alias g11='g++ -std=c++11'

# ffmpeg shortcut
function v2gif {
    ffmpeg -ss $2 -t $3 -i $1 -vf "fps=5,scale=-1:170:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 $4;
}

function frec {
    ffmpeg -f gdigrab -framerate 30 -i title="$1" -b:v 3M $2
}


# For git bash for Windows Only
alias pw="ps -W"
alias pfi="pw | grep"
alias pl="powershell -File"
function pwdc() {
    pwd -W | sed 's/\//\\/g' | clip;
}

function pk {
    echo $1 | xargs kill -f
}

PATH="/c/Program Files (x86)/Microsoft Visual Studio/2017/Enterprise/MSBuild/15.0/Bin/:$PATH"
alias msbd='MSBuild.exe'
alias emacs='winpty emacs -nw'
alias dk='winpty docker'
alias rmcr='sed -i s/\r//g'

alias kbdash='kb proxy --port=8081 & start chrome http://localhost:8081/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/'
function act_kb {
    export KUBECONFIG="$HOME/Documents/k8s-config/kubeconfig-dev-monitoring.txt"
}

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

