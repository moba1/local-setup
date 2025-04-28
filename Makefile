.PHONY: all
all: setup-homebrew

.PHONY: setup-homebrew
setup-homebrew: has-homebrew
	brew bundle

.PHONY: has-homebrew
has-homebrew:
	@sh -c "which brew >/dev/null"
