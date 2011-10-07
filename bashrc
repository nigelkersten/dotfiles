alias shell='ssh nigel@shell.puppetlabs.com'


[ -f /opt/local/etc/bash_completion ] && . /opt/local/etc/bash_completion

complete -cf sudo

export ENVPUPPET_BASEDIR=~/src
alias puppet='~/src/puppet/ext/envpuppet puppet'
alias facter='~/src/puppet/ext/envpuppet facter'
alias irb='~/src/puppet/ext/envpuppet irb'

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

PROMPT_COMMAND='echo -e "\033];$(hostname -s)\007"'

PS1="\W \u \$(parse_git_branch)\$ "

