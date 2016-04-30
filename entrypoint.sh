#!/bin/bash
[[ "${1#/}" = "$1" ]] || exec "$@"
[[ "$1" = "jq" ]] && shift && exec jq "$@"
[[ "$1" = "shell" ]] && shift && exec aws-shell "$@"
exec aws "$@"
