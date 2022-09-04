# Setup fzf
# ---------
if [[ ! "$PATH" == */home/flex/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/flex/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/flex/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/flex/.fzf/shell/key-bindings.bash"
