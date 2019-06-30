SERVER_IP="ssh.MY_IP.com"
LAINA_IP="198.21.176.170"
PI_IP="198.21.193.119"


# upload file to ftp server
upfile () {
  scp $1 claire@$SERVER_IP:;
  echo "enter remote machine password";
  ssh -t claire@$SERVER_IP \
      "sudo cp $1 /srv/ftp/; sudo chmod -Rv 555\
         /srv/ftp; sudo chown -Rv ftp /srv/ftp/*";
}
plug_set () {
  ssh  "claire@$LAINA_IP" "plug_set $1" 2> /dev/null;
}
lamp_set () {
  ssh	 "claire@$LAINA_IP" "lamp_set $1" 2> /dev/null;
}
# If the OS is macos, make an SSH tab with iTerm2, else just use normal mosh

if [[ "$OSTYPE" == "darwin"* ]]; then
  function tab () {
    local cmd=""
    local cdto="$PWD"
    local args="$@"
    osascript &>/dev/null <<EOF
      tell application "iTerm2"
        tell current window
	  create tab with profile "Server"
	end tell
      end tell
EOF
  }
  alias sshserver='tab '
else
  alias sshserver='mosh claire@$SERVER_IP'
fi

alias webserver='python3 -m http.server'
alias sudo='sudo '
alias nano='emacs-26.2'
alias emacs='emacs-26.2'
alias ls='ls --color=auto'
alias python='python3'
alias printhi='python3 -c "print(\"Hello!\");"'
alias sshpi='ssh claire@raspberrypi.local'
# This is OS-specific
alias sshlaina="ssh claire@$LAINA_IP"
alias sshpi="ssh claire@$PI_IP"
