if status --is-login
    set -gx PATH $HOME/.rvm/bin $PATH
    set -gx PATH /usr/bin/vendor_perl $PATH
    set -gx PATH /usr/bin/go $PATH
end

if status --is-interactive
    set -gx fish_greeting ''
end

set -gx EDITOR vim

function lg
    ls --group-directories-first $argv
end

function fish_prompt -d "Write out the prompt"
    printf '%s ⇒ ' (set_color $fish_color_cwd)
end

function fish_right_prompt --description "Write out the right prompt"
    printf ' %s%s%s ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function fish_user_key_bindings
    bind \ep history-search-backward
    bind \en history-search-forward
    bind \ex "runsudo"
end
