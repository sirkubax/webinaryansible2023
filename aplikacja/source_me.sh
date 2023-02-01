#! /bin/bash
export ROOT_DIR="$(readlink -m $(readlink -m "$(dirname "${BASH_SOURCE[0]}")"))"

if [ -z "$VIRTUAL_ENV" ]; then
  if ! [ -d $ROOT_DIR/venv ]; then
    echo '-- No virtualenv detected; creating'
    virtualenv $ROOT_DIR/venv --python=python3 || (echo '!!! virtualenv creation failed' && return)
    __venv_created=true
  fi
  source $ROOT_DIR/venv/bin/activate
fi


if [ "$__venv_created" = true ] || [ "$__install_requirements" = true ]; then
  echo '-- Installing requirements'
  pip install -r $ROOT_DIR/requirements.txt || (echo '!!! pip install failed' && return)
fi

unset __venv_created
unset __install_requirements
