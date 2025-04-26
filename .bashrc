# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History settings:
HISTCONTROL=ignorespace	# ignore commands that start with a space
export HISTCONTROL="${HISTCONTROL}:erasedups"	# avoiding duplicate entries

shopt -s histappend	# append to the history file, don't overwrite it

# PROMPT_COMMAND='history -a'	# Sync history between windows
update_history() {
    history -n
    history -w
    history -c
    history -r
    tac "$HISTFILE" | awk '!x[$0]++' > /tmp/tmpfile && tac /tmp/tmpfile > "$HISTFILE"
    rm /tmp/tmpfile
}

export PROMPT_COMMAND="update_history"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

