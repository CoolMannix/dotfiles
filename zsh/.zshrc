export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"

lugins=(git)
plugins+=(sudo)
plugins+=(z)
# fzf和vi-mode冲突
plugins+=(fzf)
plugins+=(docker)
plugins+=(zsh-nvm)
plugins+=(zsh-autosuggestions)
plugins+=(zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
alias vi='nvim'

# fzf
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# git flow
source $HOME/.completion/git-flow-completion.zsh

# docker-machine
fpath=($HOME/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# JAVA_HOME
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/xiaomc/.sdkman"
[[ -s "/Users/xiaomc/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/xiaomc/.sdkman/bin/sdkman-init.sh"

