module Lab_3 where

data StrAction = StrClear | StrDelete Char | StrReplace Char Char | StrAdd Char deriving (Eq,Show)

process :: String -> StrAction -> String
process s (StrClear) = []
process [] (StrDelete _) = []
process (s:ss) (StrDelete c) = if (s == c) then process ss (StrDelete c) else s : process ss (StrDelete c)
process [] (StrReplace _ _) = []
process (s:ss) (StrReplace w f) = if (s == w) then f : (process ss (StrReplace w f)) else s : (process ss (StrReplace w f)) 
process s (StrAdd x) = x : s

processAll :: String -> [StrAction] ->  String
processAll x [] = x
processAll x (p:ps) = processAll (process x p) ps

deleteAll :: String -> String -> String
deleteAll s d = processAll s (map StrDelete d)
