#!/bin/sh

apt-get update


su - vagrant <<END_OF_COMMANDS
  RC_CMDS=\$(
    echo '# Extend bashrc'
  )
  echo "\$RC_CMDS" >>\$HOME/.bashrc
  source <(echo "\$RC_CMDS")
  (
    echo
    echo '# Set python virtualenv if current directory is in a marked tree'
    echo 'workon_cwd'
  ) >>\$HOME/.profile
END_OF_COMMANDS
