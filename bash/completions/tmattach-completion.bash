#!/usr/bin/env bash
_tmattach_completions()
{
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  COMPREPLY=($(compgen -W "$(tmux ls -F '#S')" "${COMP_WORDS[1]}"))
}

complete -F _tmattach_completions tmattach
