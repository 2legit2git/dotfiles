# 1. ENVIRONMENT VARIABLES
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="micro"
export SUDOEDITOR="micro"
export VISUAL="micro"
export SUDO_EDITOR="micro"

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/go/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
# 2. THEME (Disabled because we use Starship)
ZSH_THEME=""
DISABLE_AUTO_TITLE="true"


# 3. PLUGINS
# Note: folder names in ~/.oh-my-zsh/custom/plugins must match these
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
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

function _remote_termux_title() {
  print -Pn "\e]0;%m: %~\a"
}
autoload -Uz add-zsh-hook
add-zsh-hook precmd _remote_termux_title
