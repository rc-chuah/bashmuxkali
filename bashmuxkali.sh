#!/bin/bash
# Created And Scripted by RC Chuah-(RaynerSec)

# ================
# Script Structure
# ================

# Show Usage Via Command Line Arguments
function usage() {
  echo "usage: $0 [-f] [-m] [-u] [-h]"
  echo ""
  echo "Kali-Nethunter-In-Termux Installer"
  echo ""
  echo "options:"
  echo "  -f, --full       Install Kali Nethunter In Termux"
  echo "                   Full Version."
  echo "  -m, --minimal    Install Kali Nethunter In Termux"
  echo "                   Minimal Version."
  echo "  -u, --uninstall  Uninstall Kali Nethunter In"
  echo "                   Termux."
  echo "  -h, --help       Show This Help Message And Exit."
  echo ""
  exit
}

# ===================
# Script Funtionality
# ===================

# Command Line Arguments
function full() {
  bash -c "cd ${HOME} && $(curl -fsSL https://bit.do/fNyso) && rm -rf ${HOME}/kalifs-armhf-full.tar.xz && rm -rf ${HOME}/kalifs-arm64-full.tar.xz && rm -rf ${HOME}/kalifs-armhf-full.sha512sum && rm -rf ${HOME}/kalifs-arm64-full.sha512sum"
}

function minimal() {
  bash -c "cd ${HOME} && $(curl -fsSL https://bit.do/fNysW) && rm -rf ${HOME}/kalifs-armhf-minimal.tar.xz && rm -rf ${HOME}/kalifs-arm64-minimal.tar.xz && rm -rf ${HOME}/kalifs-armhf-minimal.sha512sum && rm -rf ${HOME}/kalifs-arm64-minimal.sha512sum"
}

function uninstall() {
  bash -c "rm -rf ${HOME}/kali-arm64 && rm -rf ${HOME}/kali-armhf && rm -rf ${PREFIX}/bin/nh && rm -rf ${PREFIX}/bin/nethunter && sleep 1 && echo [+] Successfully Uninstalled ..."
}

# If No Arguments Provided, Display Usage Information
[[ $# -eq 0 ]] && usage

# Process Command Line Arguments
if [[ $@ ]]; then
  while [[ "$1" != "" ]]; do
    case $1 in
      -f|--full)
        full
        shift
        ;;
      -m|--minimal)
        minimal
        shift
        ;;
      -u|--uninstall)
        uninstall
        shift
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        usage
        exit 0
        ;;
    esac
  done
fi
