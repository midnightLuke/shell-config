# unalias some stuff
unalias gr

# much better
alias gcm='git commit -m'
alias glog="git log --oneline --decorate --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gst="git status"
alias la='ls -alh'
alias s='subl'
alias d='drush'
alias dy='drush -y'
alias console=bin/console
alias c=bin/console
alias sf2=app/console
alias sf=app/console

# el capitan dns flush shortcut
alias dnsflush='sudo echo "Flushing DNS caches...";sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;'

# Clear Drupal caches. In Drupal 8 with our dotfiles `d cr` is pretty short but
# many of us are very accustomed to `dcc`.
function dcc() {
  echo "Clearing all caches..."
  local DRUPAL_VERSION="$(drush php-eval 'echo drush_drupal_major_version();')"
  if [ ! $DRUPAL_VERSION ]; then
    echo "No Drupal installation found."
    return 1
  fi

  # Supports Drupal 6 through 8.
  if [ $DRUPAL_VERSION -gt 5 -a $DRUPAL_VERSION -lt 8 ]; then
    drush cc all
  elif [ $DRUPAL_VERSION == 8 ]; then
    drush cr
  else
    echo "Drupal $DRUPAL_VERSION is not supported."
    return 1
  fi
}

# . <(gr completion)
source "$HOME/.console/console.rc" 2>/dev/null
