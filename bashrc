#!/usr/bin/env bash
SCRIPT_PATH="$(dirname $(readlink $BASH_SOURCE))"

. "$SCRIPT_PATH/bash/colors"
. "$SCRIPT_PATH/bash/shell"
. "$SCRIPT_PATH/bash/path"
. "$SCRIPT_PATH/bash/completion"
. "$SCRIPT_PATH/bash/prompt"
. "$SCRIPT_PATH/bash/aliases"
. "$SCRIPT_PATH/bash/asdf"
. "$SCRIPT_PATH/bash/gpg"
. "$SCRIPT_PATH/bash/autojump"

if [ -e "$HOME/.homebrewrc" ]
then
  . "$HOME/.homebrewrc"
else
  echo "No .homebrewrc"
fi
