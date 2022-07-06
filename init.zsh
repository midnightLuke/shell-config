# unalias some stuff
unalias gr

# much better
alias glog="git log --oneline --decorate --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gst="git status"
alias la='exa -alh --tree --level=1 --git-ignore --git --ignore-glob=".git|vendor|node_modules"'

# podman shortcuts
alias pc="podman-compose"
alias pcps="podman-compose ps"
alias pclf="podman-compose logs -f"
alias pcl="podman-compose logs"
alias pce="podman-compose exec"
alias pcr="podman-compose run"

# macos dns flush shortcut
alias dnsflush='sudo echo "Flushing DNS caches...";sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;'

# Load rupa's z if installed
[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh

# Kubectl autocomplete.
source <(kubectl completion zsh)
