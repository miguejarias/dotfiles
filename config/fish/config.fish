# all our handy aliases to move supa fast
source $HOME/.config/aliases

# fish-specific aliases
alias fishconfig 'v ~/.config/fish/config.fish'
alias greet 'clear; fish_greeting'

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Pure - https://github.com/pure-fish/pure
set fish_function_path /Users/miguelarias/.config/fish/functions/theme-pure/functions/ $fish_function_path
source /Users/miguelarias/.config/fish/functions/theme-pure/conf.d/pure.fish

# Pure prompt theme configurations
set pure_symbol_prompt "~~>"
set pure_enable_single_line_prompt true
