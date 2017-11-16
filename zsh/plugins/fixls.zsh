# do not comment this clusterfuck

# ls colors
autoload -U colors && colors

# Enable ls colors
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# TODO organise this chaotic logic

if [[ "$DISABLE_LS_COLORS" != "true" ]]; then
  if [[ "$OSTYPE" == netbsd* ]]; then
	gls --color -d . &>/dev/null && alias ls='gls --color=tty'
  elif [[ "$OSTYPE" == openbsd* ]]; then

	gls --color -d . &>/dev/null && alias ls='gls --color=tty'
	colorls -G -d . &>/dev/null && alias ls='colorls -G'
  elif [[ "$OSTYPE" == darwin* ]]; then
	ls -G . &>/dev/null && alias ls='ls -G'
	[[ -n "$LS_COLORS" || -f "$HOME/.dircolors" ]] && gls --color -d . &>/dev/null && alias ls='gls --color=tty'
  else
	if [[ -z "$LS_COLORS" ]]; then
	  (( $+commands[dircolors] )) && eval "$(dircolors -b)"
	fi

	ls --color -d . &>/dev/null && alias ls='ls --color=tty' || { ls -G . &>/dev/null && alias ls='ls -G' }
	zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
  fi
fi

setopt auto_cd
setopt multios
