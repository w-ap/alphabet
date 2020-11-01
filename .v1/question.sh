#!/bin/bash


#ask() {
#  user=$(whoami)
#  question=$1
#  success_message="Closing issue with smart commit: ${issue}"
#  success_message="Smart commit cancelled by user"
#  read -r -p "Are you sure you want close issue #${issue} with a smart commit? [Yes/No] " response
#  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
#  then
#    echo "Closing issue with smart commit: ${issue}"
#    [[ -d ${pathspec} ]] && git add ${pathspec} && commit -am "#${issue}: #close"
#  else
#    echo "Smart commit cancelled by user"
#  fi
#
#}


ask() {
  user=$(whoami)
  question=$1
  success_message="Closing issue with smart commit: ${issue}"
  success_message="Smart commit cancelled by user"
  read -r -p "Are you sure you want close issue #${issue} with a smart commit? [Yes/No] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
  then
    echo "Closing issue with smart commit: ${issue}"
    [[ -d ${pathspec} ]] && git add ${pathspec} && commit -am "#${issue}: #close"
  else
    echo "Smart commit cancelled by user"
  fi
}


ask
