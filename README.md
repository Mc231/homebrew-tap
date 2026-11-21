# Mc231 Homebrew tap

```sh
brew install --cask mc231/tap/vsvibe
```

| Cask | App |
|---|---|
| `vsvibe` | [VSVibe](https://vshyrochuk.com/vsvibe/): run and monitor multiple Claude Code and terminal sessions on macOS 15+ |

VSVibe updates itself (Sparkle), so `brew upgrade` skips it unless you pass
`--greedy`. The cask is updated automatically by VSVibe's release workflow
([Mc231/vsvibe](https://github.com/Mc231/vsvibe)); don't edit it by hand.

Uninstall: `brew uninstall --cask vsvibe` (add `--zap` to also remove its
settings and data).
