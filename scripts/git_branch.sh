#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

print_git_branch() {
	# percentage displayed in the 2nd field of the 2nd row
    #if ! __git_prompt_git rev-parse --git-dir &> /dev/null \
    #    || [[ "$(__git_prompt_git config --get oh-my-zsh.hide-info 2>/dev/null)" == 1 ]]; then
    #return 0
    #fi

    #local ref
    #ref=$(__git_prompt_git symbolic-ref --short HEAD 2> /dev/null) \
    #|| ref=$(__git_prompt_git rev-parse --short HEAD 2> /dev/null) \
    #|| return 0

    #local upstream
    #if (( ${+ZSH_THEME_GIT_SHOW_UPSTREAM} )); then
    #upstream=$(__git_prompt_git rev-parse --abbrev-ref --symbolic-full-name "@{upstream}" 2>/dev/null) \
    #&& upstream=" -> ${upstream}"
    #fi

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' | awk $'{print $1}'
}

main() {
	print_git_branch
}
main
