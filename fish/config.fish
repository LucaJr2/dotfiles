if status is-interactive
    # Commands to run in interactive sessions can go here
end

pfetch

starship init fish | source

set -g fish_greeting ""

# Setează Editorul Default
set -gx EDITOR nvim
set -gx VISUAL nvim

alias vim="nvim"
alias v="nvim"
