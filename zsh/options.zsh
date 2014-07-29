# shell state
setopt nobeep

# chdir
setopt pushd_ignore_dups

# prompt
setopt prompt_subst
setopt nopromptcr

# globbing
setopt extendedglob
unsetopt nomatch

# history
setopt inc_append_history
setopt extended_history
setopt hist_ignore_space
unsetopt histverify
setopt hist_ignore_dups

# completion
setopt always_to_end
setopt auto_menu
setopt auto_name_dirs
setopt complete_in_word
