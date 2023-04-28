[ -z "$PS1" ] && return

[[ -s ~/.bashrc ]] && source ~/.bashrc
		if [ -f /opt/homebrew/etc/bash_completion ]; then
			. /opt/homebrew/etc/bash_completion
		fi

eval "$(gh completion -s bash)"
