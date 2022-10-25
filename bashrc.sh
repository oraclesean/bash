#!/bin/bash
  if [ -f "$BASH_DIR"/aliases.sh ]
then source "$BASH_DIR"/aliases.sh
fi    
  if [ -f "$BASH_DIR"/functions.sh ]
then source "$BASH_DIR"/functions.sh
fi
  if [ -f "$BASH_DIR"/prompt.sh ]
then source "$BASH_DIR"/prompt.sh
fi

export PATH=$PATH:$HOME:$HOME/bin

  if [ "$(uname)" == "Darwin" ]
then export PATH=$PATH:$HOME/connections
     export ORACLE_HOME=/Users/$(whoami)/oracle
     export TNS_ADMIN=$ORACLE_HOME/network/admin
     export SQLPATH=$ORACLE_HOME/login
     export LD_LIBRARY_PATH=/Users/$(whoami)/oracle:$LD_LIBRARY_PATH
     export PATH=$PATH:$ORACLE_HOME
     export ANSIBLE_SSH_ARGS="-o IdentitiesOnly=yes"
     export BASH_SILENCE_DEPRECATION_WARNING=1
     [[ -e "$HOME/lib/oracle-cli/lib/python3.7/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "$HOME/lib/oracle-cli/lib/python3.7/site-packages/oci_cli/bin/oci_autocomplete.sh"
     eval $(thefuck --alias fuck)
fi

#elif [ "$(uname)" == "Linux" ]
#then
