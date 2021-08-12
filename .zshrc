if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setting PATH for Python2.7 & Python3 & Pypy3.7
export PATH=${PATH}:/System/Library/Frameworks/Python.framework/Versions/2.7/bin
export PATH=${PATH}:/Library/Frameworks/Python.framework/Versions/3.9/bin
export PATH=${PATH}:/Library/Frameworks/pypy3.7-v7.3.4-osx64/bin

# Setting PATH for mysql
export PATH=${PATH}:/usr/local/mysql/bin

# Setting PATH for Julia_V1.6
export PATH=${PATH}:/Applications/Julia-1.6.app/Contents/Resources/julia/bin

# Setting PATH for ZSH
export ZSH="/Users/jh/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
ZLE_RPROMPT_INDENT=0

DEFAULT_USER=$USER
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh

alias python=python3
alias pypy=pypy3.7

alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'

alias proxy='export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087;'
alias disproxy='unset http_proxy https_proxy'

alias cl='clear'

export PATH="/usr/local/sbin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
