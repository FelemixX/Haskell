data Product = Book String String | Cassette String | Disk String String Int deriving (Eq,Show)
--[(Book "Obeme" "Baraki"), (Book "Obamna" "Trumpet"), (Cassette "Stone"), (Cassette "Bruh"), (Disk "rock" "stone" 228), (Disk "cock" "pit" 1337)]
getTitle :: Product -> String
getTitle (Book x _) = x
getTitle (Cassette x) = x
getTitle (Disk x _ _) = x
 
getTitles :: [Product] -> [String]
getTitles [] = []
getTitles (x:xs) = (getTitle x) : getTitles xs
 
bookAuthor :: Product -> Maybe String
bookAuthor (Book _ x) =  Just x
bookAuthor (Cassette _) = Nothing
bookAuthor (Disk _ _ _) = Nothing
 
bookAuthors :: [Product] -> [String]
bookAuthors [] = []
bookAuthors ((Book _ x):ps)   =  x : bookAuthors ps
bookAuthors ((Cassette _):ps)  =  bookAuthors ps
bookAuthors ((Disk _ _ _):ps) =  bookAuthors ps
 
getType :: Product -> String
getType (Book _ _)   = "Book"
getType (Cassette _)  = "Cassette"
getType (Disk _ _ _) = "Disk"
 
lookupTitle :: String -> [Product] -> Maybe Product
lookupTitle x [] = Nothing
lookupTitle x (p:ps) | (x == (getTitle p)) = Just p
                     | otherwise = lookupTitle x ps
 
lookupTitles :: [String] -> [Product] -> [Maybe Product]
lookupTitles [] _ = []
lookupTitles _ [] = []
lookupTitles (x:xs) p = if xn == Nothing then (lookupTitles xs p) else xn : (lookupTitles xs p) 
                        where xn = (lookupTitle x p)
