#!/usr/bin/env bash

alphabet_name="Alphabet 1.0.0"
alphabet_version="1.0.0"
alphabet_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
alphabet_profile=$HOME/.zshrc # .bash_profile
alphabet_bin=${alphabet_home}/bin

# Export PATH to user profile
grep -qxF "export ALPHABET_NAME=\"${alphabet_name}\"" ${alphabet_profile} || echo "export ALPHABET_NAME=\"${alphabet_name}\"" >> ${alphabet_profile}
grep -qxF "export ALPHABET_HOME=\"${alphabet_home}\"" ${alphabet_profile} || echo "export ALPHABET_HOME=\"${alphabet_home}\"" >> ${alphabet_profile}
grep -qxF "export PATH=\"${alphabet_bin}\":\$PATH" ${alphabet_profile} || echo "export PATH=\"${alphabet_bin}\":\$PATH" >> ${alphabet_profile}
grep -qxF "export PATH=\"${alphabet_bin}/lib\":\$PATH" ${alphabet_profile} || echo "export PATH=\"${alphabet_bin}/lib\":\$PATH" >> ${alphabet_profile}

#  grep -qxF "source \"${entrypoint}\"" ${ALPHABET_BASH_PROFILE} || echo "source \"${entrypoint}\"" >> ${ALPHABET_BASH_PROFILE}

# Aliases
source ${alphabet_home}/alphabet.alias

# Colors
export NOCOLOR='\033[0m'
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export ORANGE='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHTGRAY='\033[0;37m'
export DARKGRAY='\033[1;30m'
export LIGHTRED='\033[1;31m'
export LIGHTGREEN='\033[1;32m'
export YELLOW='\033[1;33m'
export LIGHTBLUE='\033[1;34m'
export LIGHTPURPLE='\033[1;35m'
export LIGHTCYAN='\033[1;36m'
export WHITE='\033[1;37m'

# Set permissionns
chmod +x bin/*

# Success
echo -e  "📚 Alphabet 1.0.0 successfully installed"

