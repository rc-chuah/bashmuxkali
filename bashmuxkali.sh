#!/bin/bash
# Created And Scripted by RC Chuah-(RaynerSec)

# ================
# Script Structure
# ================

# Install Kali Nethunter In Termux Full Version Function
function full() {
  bash -c "cd ${HOME} && $(curl -fsSL https://bit.ly/install-nethunter-full-termux) && rm -rf ${HOME}/kalifs-armhf-full.tar.xz && rm -rf ${HOME}/kalifs-arm64-full.tar.xz && rm -rf ${HOME}/kalifs-armhf-full.sha512sum && rm -rf ${HOME}/kalifs-arm64-full.sha512sum"
}

# Install Kali Nethunter In Termux Minimal Version Function
function minimal() {
  bash -c "cd ${HOME} && $(curl -fsSL https://bit.ly/install-nethunter-minimal-termux) && rm -rf ${HOME}/kalifs-armhf-minimal.tar.xz && rm -rf ${HOME}/kalifs-arm64-minimal.tar.xz && rm -rf ${HOME}/kalifs-armhf-minimal.sha512sum && rm -rf ${HOME}/kalifs-arm64-minimal.sha512sum"
}

# Install Kali Nethunter In Termux Nano Version Function
function nano() {
  bash -c "cd ${HOME} && $(curl -fsSL https://bit.ly/install-nethunter-nano-termux) && rm -rf ${HOME}/kalifs-armhf-nano.tar.xz && rm -rf ${HOME}/kalifs-arm64-nano.tar.xz && rm -rf ${HOME}/kalifs-armhf-nano.sha512sum && rm -rf ${HOME}/kalifs-arm64-nano.sha512sum"
}

# Uninstall Kali Nethunter In Termux Function
function uninstall() {
  bash -c "rm -rf ${HOME}/kali-arm64 && rm -rf ${HOME}/kali-armhf && rm -rf ${PREFIX}/bin/nh && rm -rf ${PREFIX}/bin/nethunter && sleep 1 && echo [+] Successfully Uninstalled ..."
}

# Show Usage Via Command Line Arguments Function
function usage() {
  echo "usage: $0 [-f] [-m] [-n] [-u] [-h]"
  echo ""
  echo "Kali-Nethunter-In-Termux Installer"
  echo ""
  echo "options:"
  echo "  -f, --full       Install Kali Nethunter In Termux"
  echo "                   Full Version."
  echo "  -m, --minimal    Install Kali Nethunter In Termux"
  echo "                   Minimal Version."
  echo "  -n, --nano       Install Kali Nethunter In Termux"
  echo "                   Nano Version."
  echo "  -u, --uninstall  Uninstall Kali Nethunter In"
  echo "                   Termux."
  echo "  -h, --help       Show This Help Message And Exit."
  echo ""
  exit
}

# ===================
# Script Funtionality
# ===================

# If No Arguments Provided, Display Usage Information
[[ $# -eq 0 ]] && usage

# Process Command Line Arguments
if [[ $@ ]]; then
  # Parsing Command Line Arguments
  while [[ "$1" != "" ]]; do
    # Command Line Arguments
    case $1 in
      -f|--full)
        full
        shift
        ;;
      -m|--minimal)
        minimal
        shift
        ;;
      -n|--nano)
        nano
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
