## Need
prepare following commands or packages:

- make
- Homebrew

## Quick start

write following contents to `~/.config/chezmoi/chezmoi.toml`

```toml
[data.git]
# example
# default_name = "example-git"
# default_email = "example@example.com"
default_name = "<default git user name>"
default_email = "<default git user email>"
```

and run

```bash
make
```
