setopt promptsubst
autoload -U colors && colors
autoload -U promptinit
promptinit

precmd() { print "$(puppetversion) $(vmfusionlist)" }
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

