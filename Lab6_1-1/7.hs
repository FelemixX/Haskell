import System.IO

isIncluded :: (Double, Double) -> Double -> (Double, Double) -> Double -> Bool
isIncluded (x1,y1) r1 (x2,y2) r2 =  sqrt ((x1-x2)^2 + (y1-y2)^2) <= r1-r2

main = do
       putStr "x1="
       hFlush stdout
       sx1 <- getLine
       putStr "y1="
       hFlush stdout
       sy1 <- getLine
       putStr "r1="
       hFlush stdout
       sr1 <- getLine
       putStr "x2="
       hFlush stdout
       sx2 <- getLine
       putStr "y2="
       hFlush stdout
       sy2 <- getLine
       putStr "r2="
       hFlush stdout
       sr2 <- getLine
       putStrLn $ show $ isIncluded ((read sx1),(read sy1)) (read sr1) ((read sx2),(read sy2)) (read sr2)