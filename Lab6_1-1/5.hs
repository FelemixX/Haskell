import System.IO

solve2 :: Double -> Double -> (Bool,Double)
solve2 a b = if a == 0 then (False, 0.0)
    else (True, (-b) / a)

main = do
       putStrLn "Enter a:"
       a <- getLine
       putStrLn "Enter b:"
       b <- getLine
       let aVal = (read a::Double)
       let bVal = (read b::Double)
       putStrLn $ "solve2(a, b) = " ++ (show $(solve2 aVal bVal))