import System.IO

isParallel :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Bool
isParallel x1 y1 x2 y2 x3 y3 x4 y4 = if (((x1-x2)*(y3-y4)-(y1-y2)*(x3-x4)) == 0) then True else False

main = do
       putStrLn "Enter a:"
       a <- getLine
       putStrLn "Enter b:"
       b <- getLine
       putStrLn "Enter c:"
       c <- getLine
       putStrLn "Enter d:"
       d <- getLine
       putStrLn "Enter e:"
       e <- getLine
       putStrLn "Enter f:"
       f <- getLine
       putStrLn "Enter g:"
       g <- getLine
       putStrLn "Enter h:"
       h <- getLine
       let aVal = (read a::Integer)
       let bVal = (read b::Integer)
       let cVal = (read c::Integer)
       let dVal = (read d::Integer)
       let eVal = (read e::Integer)
       let fVal = (read f::Integer)
       let gVal = (read g::Integer)
       let hVal = (read h::Integer)
       putStrLn $ "isParallel = " ++ (show $(isParallel aVal bVal cVal dVal eVal fVal gVal hVal))
