#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
alias l='ls -al'
alias zvuk=pavucontrol
# PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
start-conda() {
	__conda_setup="$('/home/nik/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
	    eval "$__conda_setup"
	else
	    if [ -f "/home/nik/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/home/nik/anaconda3/etc/profile.d/conda.sh"
	    else
		export PATH="/home/nik/anaconda3/bin:$PATH"
	    fi
	fi
	unset __conda_setup
	conda activate mt
}
# <<< conda initialize <<<


# Created by `pipx` on 2024-10-28 13:09:43
export PATH="$PATH:/home/nik/.local/bin"
