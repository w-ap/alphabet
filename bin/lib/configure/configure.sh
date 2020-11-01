#!/usr/bin/env bash

configure() {
	local home="$1"
#echo "Ddd$home";
#return;
  local ALPHABET_BASH_PROFILE=$HOME/.bash_profile
  local ALPHABET_BIN=${ALPHABET_HOME}/bin
  local ALPHABET_SCRIPTS=${ALPHABET_BIN}/scripts
  local ALPHABET_CMD=${ALPHABET_SCRIPTS}/cmd
  local ALPHABET_HOTKEY=${ALPHABET_SCRIPTS}/hotkey
  local ALPHABET_HELP=${ALPHABET_SCRIPTS}/help
  local ALPHABET_PLUMBING=${ALPHABET_SCRIPTS}/plumbing
	local ALPHABET_CMD_EXPORT="export PATH=\"$ALPHABET_CMD\":\$PATH"
  local ALPHABET_HOTKEY_EXPORT="export PATH=\"$ALPHABET_HOTKEY\":\$PATH"
  local ALPHABET_HELP_EXPORT="export PATH=\"$ALPHABET_HELP\":\$PATH"
  local ALPHABET_PLUMBING_EXPORT="export PATH=\"$ALPHABET_PLUMBING\":\$PATH"

  echo -e  "💡 Alphabet 1.0.0"

  grep -qxF "${ALPHABET_CMD_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_CMD_EXPORT} >> ${ALPHABET_BASH_PROFILE}
  grep -qxF "${ALPHABET_HOTKEY_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_HOTKEY_EXPORT} >> ${ALPHABET_BASH_PROFILE}
  grep -qxF "${ALPHABET_HELP_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_HELP_EXPORT} >> ${ALPHABET_BASH_PROFILE}
  grep -qxF "${ALPHABET_PLUMBING_EXPORT}" ${ALPHABET_BASH_PROFILE} || echo ${ALPHABET_PLUMBING_EXPORT} >> ${ALPHABET_BASH_PROFILE}

#  grep -qxF "source \"${entrypoint}\"" ${ALPHABET_BASH_PROFILE} || echo "source \"${entrypoint}\"" >> ${ALPHABET_BASH_PROFILE}

  chmod +x bin/*
  source $HOME/.bash_profile
  echo  -e "\tSuccessfully configured Alphabet ✓"
}
