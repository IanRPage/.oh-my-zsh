virtualenv_info() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    local project_name="${PWD:t}"
    echo "%F{#aaaaaa}(${project_name})%f"
  fi
}

export VIRTUAL_ENV_DISABLE_PROMPT=1

SPROMPT="Would you like to correct %F{red}%R%f to %F{green}%r%f? [Yes, No, Abort, Edit]: "

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{#0be3e3}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f%b "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}✗✗✗✗%f"

RPROMPT='$(virtualenv_info)'

PROMPT='%F{blue}%B┌─[%b%F{green}%n%F{black}@%F{cyan}%m%F{blue}%B]%b - %F{blue}%B[%b%F{white}%~%F{blue}%B]%b - %F{blue}%B[%b%F{yellow}%D{%a %b %d, %H:%M}%F{blue}%B]%b
%F{blue}%B└─%B[%F{magenta}$%F{blue}%B] $(git_prompt_info)%b%f'
