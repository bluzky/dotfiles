# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/flex/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/flex/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/flex/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/flex/.fzf/shell/key-bindings.zsh"
