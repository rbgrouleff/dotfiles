#!/usr/bin/env bash

if [[ -n "$SSH_AGENT_PID" ]]
then
  ssh-agent -k
fi
