# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Themes I like. #
# • af-magic #
# • afowler #
# • agnoster [>>>] #
# • apple [] #
# • arrow [➤] #
# • aussiegeek #
# • bira #
# • blinks #
# • candy #
# • clean #
# • crunch [➭] #
# • cypher (looks same as afowler, just slightly different colors) #
# • dstufft [○] #
# • fino #
# • fletcherm #
# • fox #
# • funky #
# • half-life [λ] #
# • intheloop #
# • jispwoso #
# • jnrowe [Ξ] #
# • kafeitu #
# • kennethreitz #
# • kolo #
# • linuxonly #
# • mikeh #
# • miloshadzic #
# • mlh #
# • muse [ᐅ] #
# • nanotech #
# • nicoulaj [❯] #
# • norm [λ++] #
# • obraun #
# • philips #
# • robbyrussell [Default] #
# • strug #
# • terminalparty #
# • theunraveler #
# • trapd00r #

# ZSH_THEME="strug"
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git)

# INITIALIZATION #
PF_INFO="ascii title os host kernel uptime pkgs memory"
# PF_INFO="title os host kernel uptime pkgs memory"
PF_SOURCE=""
PF_SEP=":"
PF_COLOR=1
PF_COL1=4
PF_COL2=9
PF_COL3=1
PF_ALIGN=""
PF_ASCII="openbsd"
USER="🤓"
# echo "$(date '+%D' | figlet -c | boxes -d $BOX_STYLE | lolcat -f -S 30)"; neofetch | lolcat -f -S 250 -a -s 1000 -p 3.0 -d 10
macchina
# pfetch | lolcat -f

CCS="~/Documents/ZSH/custom_command_scripts" # Path to my custom command scripts.

# ALIASES #

# Useful commands.
alias pip="python3 -m pip" # Shortcut for pip with Python 3.9 bc I'm lazy.
alias wine="wine64" # Just running `wine` causes a bad CPU error.
alias gpw="ts-node ~/Documents/Code/TypeScript/password-generator/src/generator.ts" # Password Generator I made.
alias nfp="cd ~/Documents/Games/HaxeFlixel && flixel tpl -n $1 $2 $3 $4 $5 $6 $7 $8 $9" # New Flixel Project.
alias drpc="cd ~/Documents/Code/JavaScript/rpc && make" # Discord RPC.
alias qemu="qemu-system-arm" # QEMU shortcut.
alias eslinit="npm init @eslint/config && rm package-lock.json" # Shortcut ig
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Funny commands.
alias wisecow="fortune | cowsay | lolcat -f"
alias starwars="nc towel.blinkenlights.nl 23"
alias please="sudo"

# Custom commands, via Python scripts.
alias caecip="python3 $CCS/caesarCipher.py" # 📝
alias clock="python3 $CCS/clock.py" # ⏰
alias donut="python3 $CCS/donut.py" # 🍩
alias hack="python3 $CCS/hack.py" # Just spits line of green 0's & 1's forever... 👨‍💻
alias tmc="python3 $CCS/tilemapCalculator.py" # Comes in handy.
alias drums="python3 $CCS/drumLen.py" # 🥁
alias ascols="python3 $CCS/ascols.py"

# SOURCES #
source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Zsh syntax highlighting.
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh # Zsh auto suggestion.

# opam configuration
[[ ! -r /Users/jr/.opam/opam-init/init.zsh ]] || source /Users/jr/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

[ -f "/Users/jr/.ghcup/env" ] && source "/Users/jr/.ghcup/env" # ghcup-env

# bun completions
[ -s "/Users/jr/.bun/_bun" ] && source "/Users/jr/.bun/_bun"

# Flutter SDK.
export PATH="$PATH:$HOME/Private/flutter/bin"

# LLVM.
export PATH="$PATH:$HOME/Private/llvm/bin"

# LPM; Local Password Manager (Legacy).
export PATH="$PATH:$HOME/Documents/Code/Haxe/Projects/LocalPM/out/"

# LPM; Local Password Manager (new).
alias lpm="python3 -B ~/Documents/Code/Github/LPM/src/main.py $1 $2 $3"

# BuildDoc.
alias build="python3 -B ~/Documents/Code/GitHub/BuildDoc/src/main.py $1 $2 $3 $4 $5"
# export PATH="$PATH:$HOME/Documents/Code/GitHub/BuildDoc/bin/macos/"

# Bun.
export BUN_INSTALL="/Users/jr/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Calico.
export PATH="$PATH:$HOME/Documents/Code/Rust/calico_lang/target/debug/"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# 👇 This must be last!
eval "$(starship init zsh)"
