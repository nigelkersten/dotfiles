setopt PROMPT_SUBST

autoload -U colors && colors
autoload -U promptinit && promptinit

#function precmd() { print "$fg[blue]$(puppetversion)$reset_color $fg[yellow]$(vmfusionlist)$reset_color" }

function vmfusionlist() {
  vms=$(vmrun list | gawk 'BEGIN { ORS=":" ; FS="/" }  { if (NR>1) {sub(/.vmx/, "", $NF) ; print $NF} }')
  echo ${vms%%:}
}

# worse with 3.0...
function puppetversion() {
  verfile=~/src/puppet/lib/puppet.rb
  if [ -f ~/src/puppet/lib/puppet/version.rb ]; then
    verfile=~/src/puppet/lib/puppet/version.rb
  fi
  gawk 'BEGIN { ORS=" " } /PUPPETVERSION =/ { gsub("\047", "") ; printf $3 }' $verfile
}


PROMPT='⌈%{$fg[red]%}(%{$fg[white]%}%h%{$fg[red]%}) %{$fg[white]%}%n@%m %{$fg[blue]%}%~ %{$reset_color%}% %{$reset_color%}%{$fg[white]%} vms(%{$fg[magenta]%}%{$(vmfusionlist)%}%{$fg[white]%}) puppet(%{$fg[magenta]%}%{$(puppetversion)%}%{$fg[white]%})%{$reset_color%}
⌊%{$fg[black]%}%# '

#RPROMPT='%{$reset_color%}%{$fg[white]%}vms(%{$fg[magenta]%}%{$(vmfusionlist)%}%{$fg[white]%})puppet(%{$fg[magenta]%}%{$(puppetversion)%}%{$fg[white]%})%{$reset_color%}'

