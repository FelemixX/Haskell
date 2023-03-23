import System.IO

bothTrue :: Bool -> Bool -> Bool
bothTrue a b = if a == True then
    if b == True then True
        else False
            else False

main = do
       putStrLn "Enter a:"
       a <- getLine
       putStrLn "Enter b:"
       b <- getLine
       let aVal = (read a::Bool)
       let bVal = (read b::Bool)
       putStrLn $ "bothTrue(a, b) = " ++ (show $(bothTrue aVal bVal))