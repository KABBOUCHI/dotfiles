export HOMEBREW_NO_AUTO_UPDATE=1 
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1;

brew install neovim tmux stow
brew install --cask ghostty

stow .
