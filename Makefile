.PHONY: all
all: setup-homebrew setup-dotfiles
	@if ! which devbox >/dev/null; then \
		printf "\033[1;33mWe recommend to install Devbox\033[0m\n"; \
	fi

.PHONY: setup-homebrew
setup-homebrew: has-homebrew
	brew bundle

.PHONY: has-homebrew
has-homebrew:
	@sh -c "which brew >/dev/null"

.PHONY: setup-dotfiles
setup-dotfiles:
	yadm clone https://github.com/moba1/dotfiles

