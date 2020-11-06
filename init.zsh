# unalias some stuff
unalias gr

# much better
alias glog="git log --oneline --decorate --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gst="git status"
alias la='exa -alh --tree --level=2 --git-ignore --git --ignore-glob=".git|vendor|node_modules"'
alias d='drush'
alias dy='drush -y'
alias console=bin/console
alias c=bin/console

# el capitan dns flush shortcut
alias dnsflush='sudo echo "Flushing DNS caches...";sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;'

function drushdb() {
  if [ "$#" -ne 1 ]; then
    echo "Imports a database dump into the current Drupal installation."
    echo
    echo "Usage: drushdb [.sql.gz or .sql]"
    echo "e.g. drushdb ~/path/to/mybackup.sql.gz"
    return
  fi

  if file "$1" | grep -q "gzip compressed data"; then
    pv "$1" | gunzip -c | `drush sql-connect`
  else
    pv "$1" | `drush sql-connect`
  fi
}

# Load rupa's z if installed
[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh

# Kubectl autocomplete.
source <(kubectl completion zsh)

# Composer is a memory hog.
export COMPOSER_MEMORY_LIMIT=-1

