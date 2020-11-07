#!/usr/bin/env bash
# Terminal
tabs 4
# Environment
export ALPHABET_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export ALPHABET_BIN=${ALPHABET_HOME}/bin

set -o allexport
for f in ${ALPHABET_HOME}/bin/config/*.config;
  do source ${f}; done
set +o allexport

#. ${ALPHABET_HOME}/bin/lib/configure/configure.sh --source-only

export ALPHABET_CONFIG="${ALPHABET_BIN}/config"

ALPHABET_BASH_PROFILE=$HOME/.bash_profile
ALPHABET_BIN=${ALPHABET_HOME}/bin
ALPHABET_SCRIPTS=${ALPHABET_BIN}/scripts
ALPHABET_CMD=${ALPHABET_SCRIPTS}/cmd
ALPHABET_HOTKEY=${ALPHABET_SCRIPTS}/hotkey
ALPHABET_HELP=${ALPHABET_SCRIPTS}/help
ALPHABET_PLUMBING=${ALPHABET_SCRIPTS}/plumbing
ALPHABET_CMD_EXPORT="export PATH=\"$ALPHABET_CMD\":\$PATH"
ALPHABET_HOTKEY_EXPORT="export PATH=\"$ALPHABET_HOTKEY\":\$PATH"
ALPHABET_HELP_EXPORT="export PATH=\"$ALPHABET_HELP\":\$PATH"
ALPHABET_PLUMBING_EXPORT="export PATH=\"$ALPHABET_PLUMBING\":\$PATH"

echo -e  "📚 Alphabet 1.0.0"

grep -qxF "${ALPHABET_CMD_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_CMD_EXPORT} >> ${ALPHABET_BASH_PROFILE}
grep -qxF "${ALPHABET_HOTKEY_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_HOTKEY_EXPORT} >> ${ALPHABET_BASH_PROFILE}
grep -qxF "${ALPHABET_HELP_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_HELP_EXPORT} >> ${ALPHABET_BASH_PROFILE}
grep -qxF "${ALPHABET_PLUMBING_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_PLUMBING_EXPORT} >> ${ALPHABET_BASH_PROFILE}

#  grep -qxF "source \"${entrypoint}\"" ${ALPHABET_BASH_PROFILE} || echo "source \"${entrypoint}\"" >> ${ALPHABET_BASH_PROFILE}

chmod +x bin/*
source $HOME/.bash_profile
echo  -e "\tSuccessfully configured Alphabet ✓"



