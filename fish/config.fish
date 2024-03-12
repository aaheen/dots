# set --universal fish_user_paths /home/august/.local/bin /home/august/code/bin /home/august/code/sh /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /var/lib/snapd/snap/bin

# export PATH=/home/august/.local/bin:/home/august/code/bin:/home/august/code/sh:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/var/lib/snapd/snap/bin:/home/august/.cargo/bin
 export GOPATH=/home/august/code/src/:/home/august/code/pkg/:/home/august/code/bin/

if status is-interactive
    # Commands to run in interactive sessions can go here

	# Set default theme
	theme.sh everforest-dark-vivid
end

if type -q theme.sh
	if test -e ~/.theme_history
	theme.sh (theme.sh -l|tail -n1)
	end

	# Optional
	# Bind C-o to the last theme.
	#function last_theme
	#	theme.sh (theme.sh -l|tail -n2|head -n1)
	#end

	#bind \co last_theme

	#alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
	
end

# variables

#set fish_greeting_raw "Welcome back. Logged in as $USER@$hostname."
#set fish_greeting_len $(math 6 + $(string length $fish_greeting_raw))
set -U fish_greeting #"$(string repeat -n $fish_greeting_len =)
#   $fish_greeting_raw
#$(string repeat -n $fish_greeting_len =)"

set -U EDITOR /usr/bin/nvim

set GH ~/code/src/github.com
set SLUSH ~/code/src/slush

set FISH_CFG ~/.config/fish/config.fish
set NVIM_PLUGS ~/.config/nvim/lua/plugins.lua
set HYPR_CFG ~/.config/hypr/hyprland.conf

# aliases

alias lsr="/usr/bin/ls"
alias ls="lsd"
alias lsa="lsd -Al"
alias q="exit"
alias ydl="youtube-dl"
alias slock="swaylock"
alias yoink="sudo pacman -Syuq --color auto"
alias pyoink="paru -Syuq --color auto"
alias dyoink="sudo dnf install -y --color auto"
alias begone="sudo rm -rf"

alias fsrc="source $FISH_CFG"
alias fcfg="nvim $FISH_CFG && fsrc"
alias nvplugs="nvim $NVIM_PLUGS"
alias hlcfg="nvim $HYPR_CFG"

alias rcmt="rclone mount balsam:/srv /media/opal --daemon"
alias sshfs-opal="sshfs -o default_permissions august@100.96.19.2:/srv/opal /media/opal -p 56260"
alias rcmt-medusa="rclone mount medusa:/home/august /media/medusa --daemon"
alias speedtest="speedtest-cli"
alias check-sync-conflict="ls -R . | grep sync-conflict"
alias yeet-discord="begone .config/discord/Cache/ && begone '.config/discord/Code Cache/' && begone .config/discord/GPUCache/"
alias sspot="spotifyd --no-audio-cache --audio-format F32 -b alsa -B 320 -d willow -u 13lckr -p undocked.recital -v alsa --initial-volume 70 --device-type computer"
alias respotd="systemctl --user restart spotifyd.service && systemctl --user daemon-reload"

