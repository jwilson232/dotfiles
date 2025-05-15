export EDITOR=nvim
alias vim=nvim
alias func='/usr/local/Cellar/azure-functions-core-tools@4/4.0.5907/func'
alias ll='ls -lah'
alias api='cd ~/code/refinery-next-api/' 
alias pipeline='cd ~/code/refinery-next-pipeline' 
alias ui='cd ~/code/refinery-next-ui' 
alias orch='cd ~/code/refinery-next-orchestration' 
alias vpn='sudo openvpn --config ~/.vpn/refinery-vpn-client.ovpn'
alias platform='cd ~/code/refinery-next-platform' 
alias lib='cd ~/code/refinery-next-lib' 

plugins=(git python)

ZSH_THEME="garyblessington"
# ZSH_THEME="minimal"
DISABLE_UNTRACKED_FILES_DIRTY="true"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
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

