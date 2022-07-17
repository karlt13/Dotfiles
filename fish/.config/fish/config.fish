if status is-interactive
    # Commands to run in interactive sessions can go here
end

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
