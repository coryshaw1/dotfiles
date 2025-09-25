#/bin/bash
# Install Homebrew

# Abort on error
set -e

echo "Checking if Homebrew is already installed..."

# Checks if Homebrew is installed
if test ! $(which brew); then
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	(
		echo
		echo 'eval "$(/opt/homebrew/bin/brew shellenv)"'
	) >>~/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"
else
	echo "Homebrew is already installed..."
fi

echo "Installing packages..."
apps=(
	aws-sam-cli
	awscli
	bat
	bat-extras
	btop
	chafa
	cmake
	duckdb
	eza
	fd
	fzf
	git
	go
	imagemagick
	jq
	lazygit
	lua
	lua-language-server
	neofetch
	neovim
	node
	nvm
	oh-my-posh
	postgresql
	python
	python3
	ripgrep
	sesh
	shellcheck
	shfmt
	stow
	taplo
	tmux
	tree-sitter
	uv
	wget
	yazi
	zoxide
	zsh
	zsh-autosuggestions
	zsh-syntax-highlighting
)

installed_apps=$(brew list)

for app in ${apps[@]}; do
	(echo "${installed_apps[@]}" | fgrep -q "$app") && echo "$app is already installed" || brew install "${app}"
done

# Make it possible to install fonts
brew tap homebrew/cask-fonts

casks=(
	docker
	dotnet-sdk
	font-fira-code-nerd-font
	ghostty
	google-chrome
	kitty
	microsoft-teams
	slack
	spotify
	visual-studio-code
)

echo "Installing casks..."
installed_casks=$(brew list --cask)

for cask in ${casks[@]}; do
	(echo "${installed_casks[@]}" | fgrep -q "$cask") && echo "$cask is already installed" || brew install --cask "${cask}"
done

# Update and Upgrade
echo "Updating and upgrading Homebrew..."
yes | brew update
yes | brew upgrade

# Remove outdated versions from the cellar
brew cleanup
