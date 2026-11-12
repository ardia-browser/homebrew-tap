# ardia-browser/tap

Homebrew tap for [Ardia](https://ardia.dev), a macOS browser with Arc's sidebar and Dia's polish.

```sh
brew install ardia-browser/tap/ardia
```

Or tap first:

```sh
brew tap ardia-browser/tap
brew install ardia
```

Homebrew 7 loads casks from other taps only once you trust them. The one-line install trusts the cask for you; with
the two-step form, run `brew trust ardia-browser/tap` before `brew install ardia`.

The nightly, with every fix the day it's made: `brew install ardia-browser/tap/ardia@nightly`.

Ardia updates itself with Sparkle, so `brew upgrade` leaves it alone. Apple Silicon, macOS 14 Sonoma or later.
Ardia's release script updates these casks on every release.
