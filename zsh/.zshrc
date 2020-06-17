source $HOME/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle sudo
antigen bundle z
# fzf和vi-mode冲突
antigen bundle fzf
antigen bundle docker

antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme cloud
antigen apply

# User configuration
alias vi='nvim'

# docker-machine
fpath=($HOME/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# JAVA_HOME
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/xiaomc/.sdkman"
[[ -s "/Users/xiaomc/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/xiaomc/.sdkman/bin/sdkman-init.sh"

