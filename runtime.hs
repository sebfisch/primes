-- ghc -O2 --make runtime
-- ./runtime -u runtime.csv
-- barchart criterion runtime.csv

import Criterion.Main
import Data.Numbers.Primes

main :: IO ()
main = defaultMain [ test size | size <- [5..15] ]
 where test size = bench ("wheel"++show size) $ whnf comp size
       comp size = (wheelSieve size :: [Int]) !! 10000
