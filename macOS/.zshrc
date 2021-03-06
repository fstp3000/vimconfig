export ZSH="/home/fstp/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_fedora_icon dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

UTOSUGGESTION_ACCEPT_RIGHT_ARROW=1

#POWERLEVEL9K_DISABLE_RPROMPT=true
#ﴔ
#POWERLEVEL9K_CUSTOM_FEDORA_ICON="echo ♥"
#POWERLEVEL9K_CUSTOM_FEDORA_ICON="echo ﰕ"
#POWERLEVEL9K_CUSTOM_FEDORA_ICON_BACKGROUND=007
#POWERLEVEL9K_CUSTOM_FEDORA_ICON_FOREGROUND=004

POWERLEVEL9K_CUSTOM_FEDORA_ICON="echo ﴔ"
POWERLEVEL9K_CUSTOM_FEDORA_ICON_BACKGROUND=007
POWERLEVEL9K_CUSTOM_FEDORA_ICON_FOREGROUND=010

plugins=(git
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export CUDA_HOME=/usr/local/cuda
export PATH=$PATH:$CUDA_HOME/bin
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

#bert as service
export ZEROMQ_SOCK_TMP_DIR=/home/fstp/rnn/bert_as_service/socket/


alias python='python3'
set -o vi
