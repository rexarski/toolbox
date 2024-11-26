# Environment Variables
# --------------------
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
set -gx PNPM_HOME "/Users/rqiu/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# sqlite3
export PATH="$(brew --prefix sqlite)/bin:{$PATH}"


# Aliases
# -------
# Python related
alias pip=pip3
alias python=python3

# File listing (eza)
if type -q eza
    alias ll "eza -l -g --icons"
    alias lla "ll -a"
end
