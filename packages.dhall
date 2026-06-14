let upstream-ps =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.15-20260605/packages.dhall
        sha256:e48c9b283ca89ec994453459fb74c4b5b5a9432349f83a2e104f39dd869a0f6e

let upstream-lua =
      https://github.com/Unisay/purescript-lua-package-sets/releases/download/psc-0.15.15-20260614/packages.dhall
        sha256:0d6f1a359e5d6c005f035d7d0bffd9f5cd4498d951f368f41d6a37f60b3cc91c

in  upstream-ps // upstream-lua
