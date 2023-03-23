import System.IO

isRectangular :: (Int, Int) -> (Int, Int) -> (Int, Int) -> Bool
isRectangular a b c = if ((fst b - fst a) * (fst c - fst a) + (snd b - snd a) * (snd c - snd a)) == 0 || ((fst c - fst b) * (fst a - fst b) + (snd c - snd b) * (snd a - snd b)) == 0 || ((fst a - fst c) * (fst b - fst c) + (snd a - snd c) * (snd b - snd c)) == 0 then True
    else False

main = do
       putStr "a="
       hFlush stdout
       a <- getLine
       putStr "b="
       hFlush stdout
       b <- getLine
       putStr "c="
       hFlush stdout
       c <- getLine
       putStrLn $ show $ isRectangular (read a) (read b) (read c)