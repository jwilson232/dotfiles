export EDITOR=nvim
alias vim=nvim
alias ll='ls -lah'
alias api='cd ~/code/refinery-next-api/fast_api_v2/ && conda activate fastapi' 
alias pipeline='cd ~/code/refinery-next-pipeline' 
alias ui='cd ~/code/refinery-next-ui' 
alias orch='cd ~/code/refinery-next-orchestration && conda activate orch' 
alias vpn='sudo openvpn --config ~/.vpn/refinery-vpn-client.ovpn'
alias platform='cd ~/code/refinery-next-platform' 
alias lib='cd ~/code/refinery-next-lib && conda activate lib' 

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

source "$HOME/code/zsh-vi-mode/zsh-vi-mode.plugin.zsh"

git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
  echo " (%F{green}${branch}%f)"
}

autoload -Uz colors && colors
setopt prompt_subst
PROMPT='%F{blue}%1~%f$(git_branch) '

DISABLE_UNTRACKED_FILES_DIRTY="true"
export PYTHON_VENV_NAME=.venv
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/.docker/bin:$PATH"
export PATH="/opt/homebrew/opt/libpg/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
