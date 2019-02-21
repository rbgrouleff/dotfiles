#!/usr/bin/env bash
_tmattach_completions()
{
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  SESSIONS=$(tmux ls -F '#S' 2> /dev/null)
  if [ $? -eq 0 ]; then
    COMPREPLY=($(compgen -W "${SESSIONS}" "${COMP_WORDS[1]}"))
  else
    COMPREPLY=()
  fi
}

complete -F _tmattach_completions tmattach
