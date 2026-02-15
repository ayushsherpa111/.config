source ~/.config/fish/functions/load_nvm.fish
if status is-interactive
# Commands to run in interactive sessions can go here
load_nvm > /dev/stderr
if test -f $HOME/.autojump/share/autojump/autojump.fish; 
  . /home/leapfrog/.autojump/share/autojump/autojump.fish; 
end

set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH

# zen browser
set -x PATH $HOME/Builds/zen/ $PATH
bass /usr/bin/setxkbmap -option "caps:swapescape"
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

#rofi
set --export PATH $HOME/.config/rofi/scripts $PATH
set --export PATH $HOME/.config/rofi/applets/bin $PATH

# cargo
set -x PATH $HOME/.cargo/bin $PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/leapfrog/Workspace/google-cloud-sdk/path.fish.inc' ]; . '/home/leapfrog/Workspace/google-cloud-sdk/path.fish.inc'; end
