import System.IO

max3 :: Int -> Int -> Int -> Int
max3 a b c = max a (max b c)

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
       putStrLn $ "max(a, b, c) = " ++ (show $(max3 aVal bVal cVal))