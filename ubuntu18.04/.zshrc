export ZSH="/home/fstp/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time)

UTOSUGGESTION_ACCEPT_RIGHT_ARROW=1

plugins=(git
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export CUDA_HOME=/usr/local/cuda
export PATH=$PATH:$CUDA_HOME/bin
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

alias python='python3'
set -o vi
