#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
#export PATH=$PATH:~/.nexustools
#export PATH=$PATH:~/.nexustools
#export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
#export PATH="/Library/TeX/texbin/:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/sqlite/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/clairechambers/.nexustools:${HOME}/.local/bin:/Library/TeX/texbin:/opt/devkitpro/devkitARM/bin:/opt/devkitpro/tools/bin:/usr/local/sbin:~/.nexustools:~/Library/Python/3.7/bin:/usr/local/opt/llvm/bin"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
source ~/.bash_aliases
if [ -f ~/.local/bin/motd ]; then
    ~/.local/bin/motd
fi
