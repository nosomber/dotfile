ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}



#export GEM_HOME="$HOME/.local/share/gem/ruby/3.3.0"
#export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"

alias google="google-chrome-stable --proxy-server=socks5://127.0.0.1:7891"
alias port="export http_proxy=127.0.0.1:7890 https_proxy=127.0.0.1:7890 all_proxy=127.0.0.1:7891"
alias unport="export http_proxy= https_proxy= all_proxy="
alias clash="cd ~/.rec/clash; ./clash-linux-amd64-v1.10.0 -f glados.yaml -d ."
alias gco="git clone --depth 1"
alias ytdown="yt-dlp --cookies-from-browser chrome"
alias py="python"
alias vim="nvim"
alias ytmp3="ytdown -x --audio-format mp3"
alias labserver="ssh -p 26826 chenkai@10.100.32.155"
alias feh="feh -T default"
alias wal="/usr/bin/python3.12 /usr/bin/wal"

# varible
# varible
zanmei="/mnt/win/Users/hao/Music/zanmei"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mi/purple/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mi/purple/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mi/purple/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mi/purple/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

