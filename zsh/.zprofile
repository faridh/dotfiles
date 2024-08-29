alias gis="git status"
alias gco="git checkout"
alias gpl="git pull"
alias gps="git push"
alias gcp="git cherry-pick"
alias gcm="git commit"
alias gcmi="git commit --interactive"
alias gib="git branch"
alias giff="git diff"
alias blink="terminal-notifier -title '✅' -sound 'Crystal' -message 'Process completed.' -ignoreDnD"

alias abrew='/opt/homebrew/bin/brew'
alias ibrew='arch -x86_64 /usr/local/bin/brew'
if [[ $(hostname) == "cell1.local" ]]; then
    # Catches errors related to the wrong Homebrew directly being picked up
    # (e.g. `ruby-build`)
    brew () {
      echo "use abrew or ibrew specifically" >&2
      return 1
    }
fi

