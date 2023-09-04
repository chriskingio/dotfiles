#!/bin/bash

PYENV_SETUP=$(cat << "EOF"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
EOF
)

##
# Install pyenv
##

if [ ! -d ${HOME}/.pyenv ]; then
    curl https://pyenv.run | bash

    # make sure that .bashrc is up-to-date
    echo "$PYENV_SETUP" >> ~/.bashrc
fi

# Just in case we're in a shell that doesn't respect .bashrc
eval "$PYENV_SETUP"

# Install python versions
pyenv install 3.11.5
pyenv install 3.10.13
