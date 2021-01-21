# Source the default environment
if [ -f ~/.rosws/default.sh ]; then
    . ~/.rosws/default.sh
fi

# Add an alias to the workspace setter
alias set_rosws="~/.rosws/set_rosws";

# Tab completion
_set_rosws()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -W "$(ls ~/.rosws/workspaces)" -- $cur) )
}
complete -F _set_rosws set_rosws