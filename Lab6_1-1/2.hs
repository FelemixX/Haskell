import System.IO

min3 :: Int -> Int -> Int -> Int
min3 a b c = min a (min b c)
--min3 a b c = max a (max b c)
main = do
       putStrLn "Enter a:"
       a <- getLine
       putStrLn "Enter b:"
       b <- getLine
       putStrLn "Enter c:"
       c <- getLine
       let aVal = (read a::Int)
       let bVal = (read b::Int)
       let cVal = (read c::Int)
       putStrLn $ "min(a, b, c) = " ++ (show $(min3 aVal bVal cVal))