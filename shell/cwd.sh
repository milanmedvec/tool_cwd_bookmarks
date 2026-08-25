#!/usr/bin/env bash

alias cdpush='cwd set-default'
alias cdpop='cd "$(cwd get-default)"'

cdq() {
    local result
    result="$(cwd)" || return
    clear
    cd "$result" || return
}

cdi() {
    local dir

    while true; do
        clear

        dir="$(
            {
                echo ..
                find . -mindepth 1 -maxdepth 1 -type d 2>/dev/null | sort
            } | fzf --prompt="$PWD > "
        )" || break

        [[ -z "$dir" ]] && break

        cd "$dir" || break
    done
}
