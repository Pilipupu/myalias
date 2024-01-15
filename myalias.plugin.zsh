alias ll='ls -lhG'
alias ls='ls -G'
alias rm='rm -i'
alias vi='vim'

script_path=$(readlink -f "$0")
BASH_DIR=$(dirname "$script_path")
alias synczstack="bash $BASH_DIR/synczstack.sh"
alias g="bash $BASH_DIR/g.sh"
alias mt='bash /root/shell/mvt.sh'
alias updatedb='sudo /usr/libexec/locate.updatedb'
