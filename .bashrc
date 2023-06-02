# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

#my aliases
#git --bare repo
alias config='/usr/bin/git --git-dir=$HOME/dotfiles_fedora.git/ --work-tree=$HOME'
unset rc
alias vim="nvim"
alias ll="ls -la"

#default apps
#export EDITOR="nvim"
#export TERMINAL="kitty"
#export BROWSER="firefox"

#auto start 
neofetch &&
shopt -s cdspell 
eval "$(starship init bash)"
