if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

# Editors

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# Language

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

# Less

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

# peco

function peco-history-selection() {
    BUFFER=$(history 1 | sort -k1,1nr | perl -ne 'BEGIN { my @lines = (); } s/^\s*\d+\*?\s*//; $in=$_; if (!(grep {$in eq $_} @lines)) { push(@lines, $in); print $in; }' | peco --query "$LBUFFER")
    CURSOR=${#BUFFER}
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# Alias

## ls

export LSCOLORS=gxfxcxdxbxegedabagacaD

alias ls='ls -G'
alias ll='ls -l'
alias la='ls -a'

## git

alias g='git'
alias gs='git status'
alias gl='git log --graph --date=short --decorate=short --pretty=format:"'"%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s"'"'
alias ga='git add'
alias gc='git commit'
alias gb='git branch'
alias gp='git pull'
alias gsw='git switch'

alias h='history-all'

## docker

alias d='docker'
alias dc='docker-compose'

## other

awsc () {
  export AWS_DEFAULT_PROFILE=$1
}

sa () {
  saml2aws login -a $1
}

