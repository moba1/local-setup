.PHONY: all
all: setup-homebrew setup-dotfiles

.PHONY: setup-homebrew
setup-homebrew: has-homebrew
	brew bundle

.PHONY: has-homebrew
has-homebrew:
	@sh -c "which brew >/dev/null"

.PHONY: setup-dotfiles
setup-dotfiles:
	chezmoi init https://github.com/moba1/dotfiles
	chezmoi apply
