#!/bin/bash

PYENV_VERSIONS=('3.11.5' '3.10.13')
PYENV_DEFAULT_GLOBAL='3.11.5'

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
for version in ${PYENV_VERSION[@]}; do 
    pyenv install $version
done

# Set the deafult
pyenv global ${PYENV_DEFAULT_GLOBAL}
