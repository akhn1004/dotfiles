# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export ZDOTDIR=$HOME

fpath=(path/to/zsh-completions/src $fpath)

# Ruby

export PATH="$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH"

# Go
export GOPATH=/Users/akahane/go
export PATH=$GOPATH/bin:$PATH
