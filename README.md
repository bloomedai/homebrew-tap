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
```

Login to your Omaship host:

```bash
omaship login --token <TOKEN> --host https://build.omaship.com
```

## Update

```bash
brew update
brew upgrade omaship
```

## Uninstall

```bash
brew uninstall omaship
brew untap bloomedai/homebrew-tap
```

## Troubleshooting

If Homebrew still resolves an old formula:

```bash
brew update-reset
brew update
brew upgrade omaship
```

If `omaship` is not found after install, ensure your Homebrew `bin` directory is in `PATH`.

If `Formula/omaship.rb` is not present yet, the latest `omaship/v*` release has not been published to this tap yet.

## Release Process

`Formula/omaship.rb` is maintained automatically by the Omaship release workflow in:

- https://github.com/bloomedai/omaship

On each `omaship/v*` release, the workflow publishes the gem to RubyGems and updates this tap formula with the new version and checksum.

## Source

- Main repository: https://github.com/bloomedai/omaship
- CLI docs: https://github.com/bloomedai/omaship/tree/main/cli
