setopt PROMPT_SUBST

autoload -U colors && colors
autoload -U promptinit && promptinit

#function precmd() { print "$fg[blue]$(puppetversion)$reset_color $fg[yellow]$(vmfusionlist)$reset_color" }

function vmfusionlist() {
  local vms=$(vmrun list | gawk 'BEGIN { ORS=":" ; FS="/" }  { if (NR>1) {sub(/.vmx/, "", $NF) ; print $NF} }')
  echo ${vms%%:}
}

function puppetversion() {
  gawk 'BEGIN { ORS=" " } /PUPPETVERSION =/ { gsub("\047", "") ; printf $3 }' ~/src/puppet/lib/puppet.rb
}


PROMPT="%{$fg[white]%}%n@%m %{$fg[blue]%}%~ %{$reset_color%}% 
%{$fg[white]%}[%{$fg[black]%}%h%{$fg[white]%}]%{$fg[black]%}%# "

RPROMPT="%{$reset_color%}%{$fg[white]%}[%{$fg[magenta]%}$(vmfusionlist)%{$fg[white]%}][%{$fg[magenta]%}$(puppetversion)%{$fg[white]%}]%{$reset_color%}"

