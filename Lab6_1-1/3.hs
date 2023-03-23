
import System.IO

sort2 :: Int -> Int -> (Int, Int)
sort2 a b = (min a b, max a b)

main = do
       putStrLn "Enter a:"
       a <- getLine
       putStrLn "Enter b:"
       b <- getLine
       let aVal = (read a::Int)
       let bVal = (read b::Int)
       putStrLn $ "sort = " ++ (show $(sort2 aVal bVal))