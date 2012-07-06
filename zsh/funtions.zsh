function vmfusionlist() {
  vmrun list | gawk 'BEGIN { ORS=" " ; FS="/" }  { if (NR>1) {print $NF} }'
}

# this is insane. Must get the load time of puppet --version faster.
function puppetversion() {
  gawk 'BEGIN { ORS=" " } /PUPPETVERSION =/ { gsub("\047", "") ; printf $3 }' ~/src/puppet/lib/puppet.rb
}
