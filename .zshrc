# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '✖%F{yellow}% %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cameronsmith/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cameronsmith/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cameronsmith/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cameronsmith/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

PROMPT='%F{green}%~%f${vcs_info_msg_0_}% %f $ '
