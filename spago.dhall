{ name = "purescript-lua-foldable-traversable"
, dependencies =
  [ "bifunctors"
  , "const"
  , "control"
  , "either"
  , "functors"
  , "identity"
  , "maybe"
  , "newtype"
  , "orders"
  , "prelude"
  , "tuples"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, backend =
    ''
    pslua \
    --foreign-path . \
    --ps-output output \
    --lua-output-file dist/Data_Traversable.lua \
    --entry Data.Traversable
    ''
}
