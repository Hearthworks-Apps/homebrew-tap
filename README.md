# Hearthworks Homebrew tap

Homebrew casks for apps from [Hearthworks](https://github.com/Hearthworks-Apps).

## Spake

[Spake](https://spake.app/) records a spoken note together with your screen,
transcribes it on your Mac, and saves each note as a folder of Markdown, audio
and video.

```sh
brew install --cask hearthworks-apps/tap/spake
```

Installing by the full name taps this repository and trusts the Spake cask.

Spake needs macOS 15 or later on Apple silicon. It's free for 14 days, then
$29 once.

Spake updates itself, so `brew upgrade` leaves it alone unless you pass
`--greedy`. `brew uninstall --zap --cask spake` removes models, indexes, logs,
caches and preferences. It keeps your notes and Spake's Drafts, Recovery,
Speakers and Automations folders.

Report problems with Spake at
[Hearthworks-Apps/spake-issues](https://github.com/Hearthworks-Apps/spake-issues).
Report problems with the cask itself as an issue on this repository.
