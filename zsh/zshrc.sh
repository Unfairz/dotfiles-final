# Vars
	HISTFILE=~/.zsh_history
	SAVEHIST=1000 
	setopt inc_append_history # To save every command before it is executed 
	setopt share_history # setopt inc_append_history

# Aliases

alias vps="ssh unfair@droplet.unfairgaming.uk"
alias cloud="ssh unfairga@shell.gridhost.co.uk"
alias node=/home/unfair/.nvm/versions/node/v9.0.0/bin/node
alias npm=/home/unfair/.nvm/versions/node/v9.0.0/bin/npm
alias ttfb='curl -o /dev/null -w "Connect: %{time_connect} TTFB: %{time_starttransfer} Total time: %{time_total} \n"'

alias cl="clear"

alias hosts="sudo nano /etc/hosts"

alias nstso="echo ns1.tsohost.co.uk
             echo ns2.tsohost.co.uk
             echo ns3.tsohost.co.uk
             echo
             echo ns1.tsodns.com
             echo ns2.tsodns.com"

alias nsvida="echo Cloud:
              echo ns1.vidacloud.co.uk
              echo ns2.vidacloud.co.uk
              echo ns3.vidacloud.co.uk
              echo
              echo cPanel:
              echo ns1.vidahost.com
              echo ns2.vidahost.com
              echo
              echo ns1.vhdns.net
              echo ns2.vhdns.net"

alias nsda="echo ns1.daily.co.uk
            echo ns2.daily.co.uk"


# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# some more aliases
alias sl="sudo mousepad /etc/apt/sources.list"
alias install='sudo apt install'
alias reinstall='sudo apt-get install --reinstall'
alias finstall='sudo apt -f install'
alias update='sudo apt update'
alias upgrade='sudo apt dist-upgrade'
alias dupgrade='sudo apt update && sudo apt dist-upgrade'
alias remove='sudo apt-get remove'
alias autoremove='sudo apt-get autoremove'
alias purge='sudo apt-get remove --purge'
alias agp='sudo apt-get autoremove --purge'
alias add='sudo add-apt-repository'
alias search='apt-cache search'
alias clean='sudo apt-get clean'
alias autoclean='sudo apt-get autoclean'
alias sinstall='sudo apt-get install --no-install-recommends'

#Functions
	stty -ixon

source ~/dotfiles-final/zsh/plugins/oh-my-zsh/lib/history.zsh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/lib/key-bindings.zsh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/lib/completion.zsh
source ~/dotfiles-final/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles-final/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles-final/zsh/keybindings.sh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/plugins/encode64/encode64.plugin.zsh
source ~/dotfiles-final/zsh/plugins/oh-my-zsh/plugins/nyan/nyan.plugin.zsh
# Fix for arrow-key searching
# start typing + [Up-Arrow] - fuzzy find history forward
if [[ "${terminfo[kcuu1]}" != "" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ "${terminfo[kcud1]}" != "" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
fi

source ~/dotfiles-final/zsh/prompt.sh
