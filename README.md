# Omaship Homebrew Tap

Official Homebrew tap for the Omaship CLI.

## Install

```bash
brew tap bloomedai/homebrew-tap
brew install omaship
```

## Verify

```bash
omaship --version
omaship -h
```

## Quick Start

```bash
omaship login --token <token> --host https://build.omaship.com
omaship whoami
omaship list
omaship use <ship-ref>
omaship info
```

`<ship-ref>` can be either:

- full ship name (`org/repo`, preferred)
- numeric ship id from `omaship list`

Examples:

```bash
omaship use omaship/acme
omaship use 17
```

## Core Commands

- `omaship whoami`
- `omaship list`
- `omaship use <ship-ref>`
- `omaship info [--ship <ship-ref>]` (`status` and `ship` are aliases)
- `omaship new <name>` (requires full-access token)
- `omaship configure --payments <provider> [--ship <ship-ref>]` (requires full-access token)
- `omaship deploy [--ship <ship-ref>]` (requires full-access token)

## Shell Completion

Generate completion scripts directly from the CLI:

```bash
omaship complete bash
omaship complete zsh
omaship complete fish
```

Common install locations:

```bash
# bash
mkdir -p ~/.local/share/bash-completion/completions
omaship complete bash > ~/.local/share/bash-completion/completions/omaship

# zsh
mkdir -p ~/.zfunc
omaship complete zsh > ~/.zfunc/_omaship
autoload -Uz compinit
compinit

# fish
mkdir -p ~/.config/fish/completions
omaship complete fish > ~/.config/fish/completions/omaship.fish
```

## Update / Uninstall

```bash
brew update
brew upgrade omaship

brew uninstall omaship
brew untap bloomedai/homebrew-tap
```

## Release and Formula Updates

`Formula/omaship.rb` is updated automatically from the Omaship release workflow in:

- https://github.com/bloomedai/omaship

On each `omaship/v*` release, the workflow:

1. publishes the CLI gem to RubyGems
2. updates this tap formula with the new version and checksum

If `Formula/omaship.rb` is missing, the latest `omaship/v*` release has not run yet.

## Source

- Main repository: https://github.com/bloomedai/omaship
- CLI docs: https://github.com/bloomedai/omaship/tree/main/cli
