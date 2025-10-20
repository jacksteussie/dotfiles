    
if [[ "$(uname)" == "Darwin" ]]; then
    export PATH=/opt/homebrew/bin:$PATH

    # >>> mamba initialize >>>
    # !! Contents within this block are managed by 'mamba init' !!
    export MAMBA_EXE='/opt/homebrew/opt/micromamba/bin/micromamba';
    export MAMBA_ROOT_PREFIX='/Users/jacksteussie/micromamba';
    __mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__mamba_setup"
    else
        alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
    fi
    unset __mamba_setup
    # <<< mamba initialize <<<
fi

eval "$(starship init zsh)"

# trap 'if [ -z "$(tmux list-panes -t $TMUX_PANE)" ]; then tmux kill-server; fi' EXIT
# if [ -z "$TMUX" ]; then
#  # Start a new tmux session, run pokemon-colorscripts, then start zsh in the same session
#  tmux new-session -s mysession 'pokemon-colorscripts -r; fastfetch;'
# fi

fastfetch -l ~/.ghost.txt --config ~/.config/fastfetch/config.jsonc
alias vim=nvim
alias ll='ls -lh'
alias la='ls -lah'
