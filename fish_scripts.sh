#!/usr/bin/env fish

function setToken
    ~/.dotfiles/mfa.sh $argv[1] $argv[2]
    source ~/.token_file
    echo "Your creds have been set in your env."
end

alias mfa=setToken
