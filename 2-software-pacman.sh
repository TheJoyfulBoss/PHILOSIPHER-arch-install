#!/usr/bin/env bash
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#              _____                    _____                _____                    _____                    _____                   _______               _____
#             /\    \                  /\    \              /\    \                  /\    \                  /\    \                 /::\    \             /\    \
#            /::\    \                /::\    \            /::\    \                /::\    \                /::\    \               /::::\    \           /::\    \
#           /::::\    \              /::::\    \           \:::\    \              /::::\    \               \:::\    \             /::::::\    \          \:::\    \
#          /::::::\    \            /::::::\    \           \:::\    \            /::::::\    \               \:::\    \           /::::::::\    \          \:::\    \
#         /:::/\:::\    \          /:::/\:::\    \           \:::\    \          /:::/\:::\    \               \:::\    \         /:::/~~\:::\    \          \:::\    \
#        /:::/__\:::\    \        /:::/__\:::\    \           \:::\    \        /:::/__\:::\    \               \:::\    \       /:::/    \:::\    \          \:::\    \
#       /::::\   \:::\    \      /::::\   \:::\    \          /::::\    \      /::::\   \:::\    \              /::::\    \     /:::/    / \:::\    \         /::::\    \
#      /::::::\   \:::\    \    /::::::\   \:::\    \        /::::::\    \    /::::::\   \:::\    \    ____    /::::::\    \   /:::/____/   \:::\____\       /::::::\    \
#     /:::/\:::\   \:::\____\  /:::/\:::\   \:::\    \      /:::/\:::\    \  /:::/\:::\   \:::\____\  /\   \  /:::/\:::\    \ |:::|    |     |:::|    |     /:::/\:::\    \
#    /:::/  \:::\   \:::|    |/:::/  \:::\   \:::\____\    /:::/  \:::\____\/:::/  \:::\   \:::|    |/::\   \/:::/  \:::\____\|:::|____|     |:::|    |    /:::/  \:::\____\
#    \::/    \:::\  /:::|____|\::/    \:::\  /:::/    /   /:::/    \::/    /\::/   |::::\  /:::|____|\:::\  /:::/    \::/    / \:::\    \   /:::/    /    /:::/    \::/    /
#     \/_____/\:::\/:::/    /  \/____/ \:::\/:::/    /   /:::/    / \/____/  \/____|:::::\/:::/    /  \:::\/:::/    / \/____/   \:::\    \ /:::/    /    /:::/    / \/____/
#              \::::::/    /            \::::::/    /   /:::/    /                 |:::::::::/    /    \::::::/    /             \:::\    /:::/    /    /:::/    /
#               \::::/    /              \::::/    /   /:::/    /                  |::|\::::/    /      \::::/____/               \:::\__/:::/    /    /:::/    /
#                \::/____/               /:::/    /    \::/    /                   |::| \::/____/        \:::\    \                \::::::::/    /     \::/    /
#                 ~~                    /:::/    /      \/____/                    |::|  ~|               \:::\    \                \::::::/    /       \/____/
#                                      /:::/    /                                  |::|   |                \:::\    \                \::::/    /
#                                     /:::/    /                                   \::|   |                 \:::\____\                \::/____/
#                                     \::/    /                                     \:|   |                  \::/    /                 ~~
#                                      \/____/                                       \|___|                   \/____/
#
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

  # SYSTEM --------------------------------------------------------------

  'linux-lts' # Long term support kernel

  # TERMINAL UTILITIES --------------------------------------------------

  'bleachbit'               # File deletion utility
  'cmatrix'                 # The Matrix screen animation
  'cronie'                  # cron jobs
  'curl'                    # Remote content retrieval
  'file-roller'             # Archive utility
  'gtop'                    # System monitoring via terminal
  'gufw'                    # Firewall manager
  'hardinfo'                # Hardware info app
  'htop'                    # Process viewer
  'neofetch'                # Shows system info when you launch terminal
  'ntp'                     # Network Time Protocol to set time via network.
  'numlockx'                # Turns on numlock in X11
  '7zip'                    # 7z compression program
  'rsync'                   # Remote file sync utility
  'speedtest-cli'           # Internet speed via terminal
  'terminus-font'           # Font package with some bigger fonts for login terminal
  'unrar'                   # RAR compression program
  'unzip'                   # Zip compression program
  'wget'                    # Remote content retrieval
  'kitty'                   # Terminal emulator
  'vim'                     # Terminal Editor
  'nvim'                    # vim adon
  'zenity'                  # Display graphical dialog boxes via shell scripts
  'zip'                     # Zip compression program
  'zsh'                     # Interactive shell
  'zsh-autosuggestions'     # Zsh Plugin
  'zsh-syntax-highlighting' # Zsh Plugin

  # GENERAL UTILITIES ---------------------------------------------------

  'dolphin'   # Filesystem browser
  'hyprpaper' # Wallpaper changer
  'clamav'    # Anti-virus

  # DEVELOPMENT ---------------------------------------------------------

  'gedit'    # Text editor
  'clang'    # C Lang compiler
  'cmake'    # Cross-platform open-source make system
  'code'     # Visual Studio Code
  'electron' # Cross-platform development using Javascript
  'git'      # Version control system
  'gcc'      # C/C++ compiler
  'glibc'    # C libraries
  'meld'     # File/directory comparison
  'nodejs'   # Javascript runtime environment
  'npm'      # Node package manager
  'python'   # Scripting language
  'yarn'     # Dependency management (Hyper needs this)

  # MEDIA ---------------------------------------------------------------

  'celluloid' # Video player
  'feh'       # Image viewer

  # PRODUCTIVITY --------------------------------------------------------

  'hunspell'    # Spellcheck libraries
  'hunspell-en' # English spellcheck library
  'xpdf'        # PDF viewer

)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING: ${PKG}"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
