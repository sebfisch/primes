-- ghc -O2 --make memory
-- ./memory 6 1000000 +RTS -s

import System.Environment
import Data.Numbers.Primes

main :: IO ()
main = do [m,n] <- (map read . take 2) `fmap` getArgs
          print $ (wheelSieve m :: [Int]) !! n

