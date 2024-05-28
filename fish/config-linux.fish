if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"
set -g FZF_LEGACY_KEYBINDINGS 0
#set -gx FZF_DEFAULT_COMMAND 'ag -l --hidden --ignore .git'
set -gx FZF_FIND_FILE_COMMAND "$FZF_DEFAULT_COMMAND"
