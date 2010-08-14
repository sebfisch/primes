import System.Environment
import Data.Numbers.Primes

main :: IO ()
main = do [m,n] <- (map read . take 2) `fmap` getArgs
          print $ wheelSieve m !! n
