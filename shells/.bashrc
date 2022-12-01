## Config

# ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# Poetry
#PATH=$HOME/.local/bin nodejs
#PATH="~/.local/share/pypoetry/venv/bin/poetry"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/luis/apps/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/luis/apps/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/luis/apps/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/luis/apps/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda deactivate