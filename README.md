Quick Start: New Ubuntu Server
Follow these steps to bootstrap a fresh Ubuntu machine with this configuration.
1. System Prep & GitHub Auth
Update the system and authenticate with GitHub so you can clone the repo.
# Update system and install GitHub CLI
sudo apt update && sudo apt upgrade -y
sudo apt install -y gh git

# Authenticate (Select SSH when asked)
gh auth login

2. Clone & Install
Clone the dotfiles and use Ansible to install core software (Micro, Zsh, etc.).
# Clone the repository
git clone git@github.com:2legit2git/dotfiles.git

# Install Ansible
sudo apt install -y ansible

# Run the installation playbook
# (Enter sudo password when prompted for BECOME)
ansible-playbook ~/dotfiles/common.yml --ask-become-pass

3. Link Dotfiles & Finalize
Link your config files and switch your shell to Zsh.

# Install Eza
sudo apt install -y eza

# Switch shell to Zsh
chsh -s $(which zsh)

# Log out for changes to take effect
exit

#The "One-Liner"
If you have already authenticated gh, you can paste this block to do everything at once:

git clone git@github.com:2legit2git/dotfiles.git && \
sudo apt install -y ansible && \
ansible-playbook ~/dotfiles/common.yml --ask-become-pass && \
cd ~/dotfiles && stow -R */ && \
sudo apt install -y eza && \
chsh -s $(which zsh)

