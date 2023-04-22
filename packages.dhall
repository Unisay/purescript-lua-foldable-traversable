let upstream-ps =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.8-20230422/packages.dhall
        sha256:53dd9dfa0c0c3e8bd922dc49dfb3661bc8475c7166f079831440bb586b3cc052

let upstream-lua =
      https://github.com/Unisay/purescript-lua-package-sets/releases/download/psc-0.15.8-20230401-draft3/packages.dhall
        sha256:3ee965df0c8a72af1546122892851f1ddac04143b8af12c3d981cdc1c3687be4

in  upstream-ps // upstream-lua
