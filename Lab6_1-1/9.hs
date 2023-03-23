import System.IO

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c = if a + b > c && a + c > b && b + c > a then True
    else False

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
       putStrLn $ "min(a, b, c) = " ++ (show $(isTriangle aVal bVal cVal))