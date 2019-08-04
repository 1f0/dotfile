function grepai {
    grep -rniI $1 *
}

function grepaix {
    grep -rniI --exclude-dir=$2 $1 *
}

# docker tools
alias kb='kubectl'
alias dc='docker-compose'

# z jump
source ~/.rupa.z.sh

# some useful alias from oh-my-zsh
## system operation
alias 1='cd -'
alias _='sudo'
alias l='ls -lah'
alias ll='ls -lh'
## git
alias gst='git status'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gd='git diff'
alias gps='git push'
alias gpl='git pull'

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

