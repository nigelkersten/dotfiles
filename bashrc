alias shell='ssh nigel@shell.puppetlabs.com'

. /opt/local/etc/bash_completion

complete -cf sudo

export ENVPUPPET_BASEDIR=~/src
alias puppet='~/src/puppet/ext/envpuppet puppet'
alias facter='~/src/puppet/ext/envpuppet facter'

