-- Regression coverage for the Array traverse / mapWithIndex fixes.
--   * traverse over Maybe must be length- and order-preserving at every size;
--     sizes > 3 exercise the divide-and-conquer pivot branch of
--     traverseArrayImpl, which previously appended sub-results with the broken
--     table.concat (depends on a correct Array Semigroup `<>`, prelude >= 7.2.2).
--   * mapWithIndex must pass 0-based indices.
module Main where

import Prelude

import Data.FunctorWithIndex (mapWithIndex)
import Data.Maybe (Maybe(..))
import Data.Traversable (traverse)
import Effect (Effect)
import Test.Assert (assertEqual)

main :: Effect Unit
main = do
  assertEqual { actual: traverse Just ([] :: Array Int), expected: Just [] }
  assertEqual { actual: traverse Just [ 1 ], expected: Just [ 1 ] }
  assertEqual { actual: traverse Just [ 1, 2, 3 ], expected: Just [ 1, 2, 3 ] }
  assertEqual { actual: traverse Just [ 1, 2, 3, 4 ], expected: Just [ 1, 2, 3, 4 ] }
  assertEqual
    { actual: traverse Just [ 1, 2, 3, 4, 5, 6, 7, 8 ]
    , expected: Just [ 1, 2, 3, 4, 5, 6, 7, 8 ]
    }
  assertEqual
    { actual: traverse (\x -> [ x, negate x ]) [ 1, 2 ]
    , expected: [ [ 1, 2 ], [ 1, -2 ], [ -1, 2 ], [ -1, -2 ] ]
    }
  assertEqual
    { actual: mapWithIndex (\i x -> i * 100 + x) [ 5, 6, 7 ]
    , expected: [ 5, 106, 207 ]
    }
