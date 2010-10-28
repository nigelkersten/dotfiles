case $- in
  *i*)    # do things for interactive shell
    exit 0
    ;;
  *)      # do things for non-interactive shell
    ;;
esac

alias shell='ssh nigel@shell.puppetlabs.com'
