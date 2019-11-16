# This file obviously is only useful in zsh
######################################################################
#<
#
# Function: p6_zsh_profile_on(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_zsh_profile_on() {
    local name="$1"

    zmodload zsh/datetime
    setopt PROMPT_SUBST
    PS4='+$EPOCHREALTIME %N:%i> '
    export PS4

    local logfile=$(mktemp $name-zsh.XXXXXXXX)
    echo "Logging to $logfile"
    exec 3>&2 2>$logfile

    setopt XTRACE
    set -x
}

######################################################################
#<
#
# Function: p6_zsh_profile_off()
#
#>
######################################################################
p6_zsh_profile_off() {

    set +x
    unsetopt XTRACE

    PS4='+%N:%i>'
    export PS4

    exec 2>&3 3>&-
}