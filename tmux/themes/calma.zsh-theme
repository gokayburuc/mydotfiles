function set_prompt_color() {
  if [ "$?" -ne 0 ]; then
    PROMPT_COLOR="%F{red}"
  else
    PROMPT_COLOR="%F{green}"
  fi
}

function git_prompt_info() {
  local git_info=$(command git rev-parse --git-dir &>/dev/null; echo "${?}")
  if [[ $git_info == 0 ]]; then
    local git_branch=$(git symbolic-ref --short HEAD)
    local git_status=$(git status --porcelain 2>/dev/null)
    if [[ -n $git_status ]]; then
      local git_prompt="%F{red} *%f"
    else
      local git_prompt=""
    fi
    echo "%F{magenta} {$git_branch${git_prompt}%F{magenta}}%f"
  fi
}

PROMPT='%f%(?..%F{red}[%?]%f )%F{blue}[%D{%H:%M}]%f %f%B@%1~$(git_prompt_info)%b%f ${PROMPT_COLOR}%B⊙%b%f '

precmd_functions+=(set_prompt_color)

