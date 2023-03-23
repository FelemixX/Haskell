import System.Environment (getArgs)

main = do
   args <- getArgs
   putStrLn "The arguments are:"
   mapM_ putStrLn args