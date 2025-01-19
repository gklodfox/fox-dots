# Start X at login
if status is-login
	if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
		exec startx -- -keeptty
	end
end

# Start tmux
if status is-interactive
and not set -q TMUX
  #set -gx FZF_DEFAULT_COMMAND "fzf --tmux"
  #set -gx FZF_DEFAULT_OPTS "--border --height=40% --layout=reverse --color=bg+:#141a1f --color=fg:#b3c1cc --color=fg+:#b3c1cc --color=hl:#52697a --color=hl+:#52697a --color=border:#3d4f5c --color=info:#75bdf0 --color=marker:#a875f0 --color=pointer:#ff007b --color=prompt:#ff007b --color=spinner:#ff007b --color=header:#757ff0"
  set -gx FZF_DEFAULT_OPTS "--height 40% --tmux bottom,40% --layout reverse --border --color 'bg+:#ff007b,fg:#141a1f,fg+:#142a2f,hl:#52697a,hl+:#52697a,border:#3d4f5c,info:#ff007b,marker:#a875f0,pointer:#ff007b,prompt:#ff007b,spinner:#ff007b,header:#ff007b'"
  if tmux has-session -t master
    exec tmux attach-session -t master
  else
    tmux new-session -s master
  end
end

fzf_configure_bindings
