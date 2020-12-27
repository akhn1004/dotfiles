# KeyBind

bindkey -e

# Histroy

export HISTFILE=${HOME}/.zsh_history
HISTSIZE=10000
SAVEHIST=100000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/akahane/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/akahane/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/akahane/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/akahane/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/akahane/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# anyenv

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# pyenv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv

export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"


