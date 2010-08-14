import Criterion.Main
import Data.Numbers.Primes

main :: IO ()
main = defaultMain [ test size | size <- [0..9] ]
 where test size = bench ("wheel"++show size) $ whnf comp size
       comp size = wheelSieve size !! 10000
