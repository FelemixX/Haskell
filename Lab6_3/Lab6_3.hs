import System.Environment (getArgs)

main :: IO ()
main = do
  [fileName] <- getArgs
  file <- readFile fileName
  putStrLn file