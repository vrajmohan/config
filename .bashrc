PS1="\w \$ "
export EDITOR=vi
set -o vi

# Rust
. "$HOME/.cargo/env"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
