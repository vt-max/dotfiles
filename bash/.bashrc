# Source git-prompt completions.
source /home/linuxbrew/.linuxbrew/etc/bash_completion.d/git-prompt.sh

# Environment variable configuration.
export CLICOLOR=1
export EDITOR='nvim'
export VISUAL='nvim'

# Prompt configuration.
export PROMPT_DIRTRIM=2
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\u@\h \w$(__git_ps1 " (%s)") \[\e[0;$(($?==0?0:91))m\]$ \[\e[0m\]'

# Alias commands
alias ls='ls --color'
alias ll='ls -lh --color'
alias la='ls -lah --color'
alias lt='ls -latr --color'

alias gap='git add -p'
alias gs='git status'
alias gd='git diff'

alias grep="grep --color"
alias vim='nvim'

# Add path for local binaries.
export PATH=$PATH:~/.local/bin

# Add path for linuxbrew dependencies.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Enable fzf integration for Bash and fzf-git support.
eval "$(fzf --bash)"
source ~/.local/bin/fzf-git.sh
export FZF_DEFAULT_OPTS='--color=light'

# Configure persistent bash history.
log_bash_persistent_history()
{
    [[ $(history 1) =~ ^\ *[0-9]+\ +([^\ ]+\ [^\ ]+)\ +(.*)$ ]]
    local date_part="${BASH_REMATCH[1]}"
    local command_part="${BASH_REMATCH[2]}"
    if [ "$command_part" != "$PERSISTENT_HISTORY_LAST" ]
    then
        echo $date_part "|" "$command_part" >> ~/.persistent_history
        export PERSISTENT_HISTORY_LAST="$command_part"
    fi
}

# Add to persistent history on running prompts.
PROMPT_COMMAND="log_bash_persistent_history"
export HISTTIMEFORMAT="%F %T  "

# Setup miniforge3
eval "$(/home/max/miniforge3/bin/conda shell.bash hook)"

export PODMAN_IGNORE_CGROUPSV1_WARNING=1

source ~/.config/task.sh
