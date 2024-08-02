# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888


# The git prompt is going to be tealish (?)
ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{#0be3e3}"

# Close off git prompt by resetting the colors and styles
ZSH_THEME_GIT_PROMPT_SUFFIX="%f%b "

# Do nothing if branch is clean, meaning there have been no changes since last commit
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Until I find something better, we're going to do 4 red ✗s 
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}✗✗✗✗%f"

PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"%a %b %d, %H:%M"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}$%{\e[0;34m%}%B] $(git_prompt_info)%{\e[0m%}%b'
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
