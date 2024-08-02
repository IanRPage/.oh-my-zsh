# My own shit



# This prompt appears when there is a typo in a command, prompt will highlight user typo in red and suggested command in green. Followed by choices as to what user wants to do
SPROMPT="Would you like to correct %F{red}%R%f to %F{green}%r%f? [Yes, No, Abort, Edit]: "

############ Setting up the prompt ###############

# Set var for datetime in wkday/day format
# SIMPLE_CURRENT_TIME_="%F{#3EFF00}[%D{%a %d ~ %I:%M%p}]%f" # example [Mon 22 ~ 01:03PM]
SIMPLE_CURRENT_TIME_="%F{#3EFF00}[%D{%I:%M%p}]%f"

# Set var for current directory and git shit if applicable
SIMPLE_CURRENT_DIR_="%B%F{#FF00E4}% %0~%f%b \$(git_prompt_info)" # will give the full directory structure
# SIMPLE_CURRENT_DIR_="%F{#FF00E4}% %1~%f\$(git_prompt_info)" # will give only the current working directory

# Set var that checks for user's level of authorization and gives a # if root, and % if not
SIMPLE_CHECK_AUTH_="%B%F{#9a4dff}%<<%#%f%b"

# Set var that puts (1) auth level, (2) yellow name, (3) auth level, (4) and green ➤
SIMPLE_CURRENT_USR_="$SIMPLE_CHECK_AUTH_%B%F{#FFEC00}%n%f%b$SIMPLE_CHECK_AUTH_"

# The git prompt is going to be tealish (?)
ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{#0be3e3}"

# Close off git prompt by resetting the colors and styles
ZSH_THEME_GIT_PROMPT_SUFFIX="%f%b "

# Do nothing if branch is clean, meaning there have been no changes since last commit
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Until I find something better, we're going to do 4 red ✗s 
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}✗✗✗✗%f"

# Change the prompt that shows up on every line in terminal
PROMPT="$SIMPLE_CURRENT_TIME_ $SIMPLE_CURRENT_USR_: $SIMPLE_CURRENT_DIR_%B%F{green}➤  %f%b"

