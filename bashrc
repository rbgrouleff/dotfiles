#!/usr/bin/env bash

SCRIPT_PATH="$(pwd)/$(dirname $(readlink $BASH_SOURCE))"

. "$SCRIPT_PATH/bash/colors"
. "$SCRIPT_PATH/bash/shell"
. "$SCRIPT_PATH/bash/path"
. "$SCRIPT_PATH/bash/completion"
. "$SCRIPT_PATH/bash/prompt"
. "$SCRIPT_PATH/bash/aliases"
. "$SCRIPT_PATH/bash/rbenv"
