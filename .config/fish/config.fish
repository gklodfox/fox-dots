# Start X at login
if status is-login
   if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
      exec startx -- -keeptty
   end
end

# Start tmux
if status is-interactive
and not set -q TMUX
  if tmux has-session -t master
    exec tmux attach-session -t master
  else
    tmux new-session -s master
  end
end
