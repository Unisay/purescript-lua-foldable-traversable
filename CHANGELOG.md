# Changelog

Notable changes to this Lua fork of `purescript-foldable-traversable` are recorded here. The fork
tracks its own release line (Lua 5.1 FFI on the [pslua](https://github.com/purescript-lua/purescript-lua)
compiler). The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and entries are
assembled from fragments in `changelog.d/` with [scriv](https://scriv.readthedocs.io/) on each release.

<!-- scriv-insert-here -->

## v6.1.1 - 2026-06-14

### Fixed

- `Data.FunctorWithIndex` `mapWithIndex` passes a 0-based index, matching
  PureScript semantics.

<!-- scriv-end-here -->
