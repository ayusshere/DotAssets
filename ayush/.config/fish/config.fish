starship init fish | source
if status is-interactive

    function histnum
        history | awk '{printf(" %3d - %s\n", nr, $0)}'
    end

    # Aliases
    alias ls='eza --icons=always --color=always -a'
    alias ll='eza --icons=always --color=always -la'
    alias cat='bat --theme=base16'
    alias install='brew install -v'
    alias reinstall='brew reinstall -v'
    alias uninstall='brew uninstall -v'
    alias search='brew search'
    alias chart1='cat Library/Java\ Big\ O\ Complexity\ Cheatsheet.md'
    alias chart2='cat Library/Trick\ And\ Others\ Cheetsheet'
    alias fishconfig='nvim ~/.config/fish/config.fish'
    alias ghosttyconfig='nvim ~/.config/ghostty/config'
    alias vsc='code .'
    alias lst='eza -T --git-ignore'
    alias hist='history | cat'
    alias df='df -h'
    alias ff='fastfetch'
    alias gc='git clone'
end

fish_vi_key_bindings # Enable Vim keybindings
# Bind Option+F to accept full suggestion in insert mode
bind -M insert \ef forward-word
bind -M insert \eb backward-word

function fish_command_not_found
    echo " $argv[1]? I don't know what that is. "
end

if type -q fzf
    fzf --fish | source
end
bind ƒ fzf-complete # Requires fzf.fish plugin

eval "$(/opt/homebrew/bin/brew shellenv)"
