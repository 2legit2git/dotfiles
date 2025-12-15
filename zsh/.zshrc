# 1. ENVIRONMENT VARIABLES
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="micro"
export VISUAL="micro"
# Ensure local bin is in path (for tools like zoxide/starship)
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# 2. THEME (Disabled because we use Starship)
ZSH_THEME=""

# 3. PLUGINS
# Note: folder names in ~/.oh-my-zsh/custom/plugins must match these
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  you-should-use
  docker 
  docker-compose
)

# 4. LOAD OH MY ZSH
source $ZSH/oh-my-zsh.sh

# 5. USER CONFIGURATION

# Load Custom Aliases (Option A: Separate file via Stow)
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Initialize Starship (The Prompt)
eval "$(starship init zsh)"

# Initialize Zoxide (The Navigation)
eval "$(zoxide init zsh)"
