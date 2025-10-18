#set theme
fish_config theme choose mocha

#delete startup message
set fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

#source aliases
source ~/.config/fish/functions/aliases.fish
