source ~/.config/fish/functions/load_nvm.fish
source $HOME/.cargo/env.fish
if status is-interactive
# Commands to run in interactive sessions can go here
load_nvm > /dev/stderr
if test -f $HOME/.autojump/share/autojump/autojump.fish; 
  . $HOME/.autojump/share/autojump/autojump.fish; 
end

set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
set -Ux PYENV_ROOT $HOME/.pyenv
pyenv init - fish | source
# goenv
set -x GOENV_ROOT $HOME/.goenv
set -x PATH $GOENV_ROOT/bin $PATH

# zen browser
# set -x PATH $HOME/Builds/zen/ $PATH
# bass /usr/bin/setxkbmap -option "caps:swapescape"
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

#rofi
set --export PATH $HOME/.config/rofi/scripts $PATH
set --export PATH $HOME/.config/rofi/applets/bin $PATH

set -x ANDROID_HOME /mnt/c/Users/Ayush/AppData/Local/Android/Sdk
set -x PATH /usr/lib/jvm/default-java/bin/ $ANDROID_HOME/platform-tools $ANDROID_HOME/emulator $JAVA_HOME/bin $PATH

# cargo
# set -x PATH $HOME/.cargo/bin $PATH

alias espsh="source ~/.espressif/tools/activate_idf_v6.1.fish"

set -x ANTHROPIC_AUTH_TOKEN ollama
set -x ANTHROPIC_BASE_URL "http://localhost:11434"
# Claude Code asks for Sonnet/Haiku/Opus by name, so map them to your local model:
set -x ANTHROPIC_DEFAULT_SONNET_MODEL "qwen3.5"
set -x ANTHROPIC_DEFAULT_HAIKU_MODEL "qwen3.5"
set -x ANTHROPIC_DEFAULT_OPUS_MODEL "qwen3.5"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Workspace/google-cloud-sdk/path.fish.inc" ]; . "$HOME/Workspace/google-cloud-sdk/path.fish.inc"; end

set -gx GOENV_SHELL fish
set -gx GOENV_ROOT /home/ssjsherpa/.goenv
if test -z $GOENV_RC_FILE
  set GOENV_RC_FILE $HOME/.goenvrc
end
if test -e $GOENV_RC_FILE
  source $GOENV_RC_FILE
end
if not contains $GOENV_ROOT/shims $PATH
  if test "$GOENV_PATH_ORDER" = "front"
    set -gx PATH $GOENV_ROOT/shims $PATH
  else
    set -gx PATH $PATH $GOENV_ROOT/shims
  end
end
if test "$GOENV_PATH_ORDER" != "front"
  set -l system_go_path (command -v go 2>/dev/null)
  if test -n "$system_go_path"; and not string match -q "$GOENV_ROOT*" $system_go_path
    echo 'goenv: WARNING: System "go" found at $system_go_path' >&2
    echo 'goenv: Since your shims are at the end of PATH, system "go" will be used instead of goenv-managed versions.' >&2
    echo 'goenv: To fix this, add the following to your $GOENV_RC_FILE:' >&2
    echo 'goenv:     set -gx GOENV_PATH_ORDER front' >&2
    echo 'goenv: Or run: echo "set -gx GOENV_PATH_ORDER front" >> $GOENV_RC_FILE' >&2
    echo "" >&2
  end
end
source "/home/ssjsherpa/.goenv/libexec/../completions/goenv.fish"
command goenv rehash 2>/dev/null
function goenv
  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case rehash shell
    source (goenv "sh-$command" $argv|psub)
  case "*"
    command goenv "$command" $argv
  end
end
goenv rehash --only-manage-paths


