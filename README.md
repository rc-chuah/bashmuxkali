# bashmuxkali
This is a bash script by which you can install Kali Nethunter (Kali Linux) in your termux application without rooted phone.

## Usage
### How To Use bashmuxkali
1. Install Dependencies In Termux `pkg update -y && pkg install git -y`
2. Git Clone Repo `git clone https://github.com/rc-chuah/bashmuxkali`
3. Change Directory `cd bashmuxkali`
4. Give execution permission `chmod +x bashmuxkali.sh`
5. Run Script `./bashmuxkali.sh <options>`
### bashmuxkali options
```
usage: bashmuxkali.sh [-f] [-m] [-n] [-u] [-h]

Kali-Nethunter-In-Termux Installer

options:
  -f, --full       Install Kali Nethunter In Termux
                   Full Version.
  -m, --minimal    Install Kali Nethunter In Termux
                   Minimal Version.
  -n, --nano       Install Kali Nethunter In Termux
                   Nano Version.
  -u, --uninstall  Uninstall Kali Nethunter In
                   Termux.
  -h, --help       Show This Help Message And Exit.
```
