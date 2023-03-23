module Lab5_2_2 where

import Data.Maybe (mapMaybe)

data Product = Book String String | Cassette String | Disk String String Int deriving (Eq,Show)

getTitle :: Product -> String
getTitle (Book x _) = x
getTitle (Cassette x) = x
getTitle (Disk x _ _) = x

getTitles :: [Product] -> [String]
getTitles = map getTitle --тут map

bookAuthor :: Product -> Maybe String
bookAuthor (Book _ x) =  Just x
bookAuthor (Cassette _) = Nothing
bookAuthor (Disk _ _ _) = Nothing

bookAuthors :: [Product] -> [String]
bookAuthors = mapMaybe bookAuthor --тут добавим Maybe

getType :: Product -> String
getType (Book _ _)   = "Book"
getType (Cassette _)  = "Cassette"
getType (Disk _ _ _) = "Disk"

lookupTitle :: String -> [Product] -> Maybe Product
lookupTitle x [] = Nothing
lookupTitle x (p:ps) | (x == (getTitle p)) = Just p
                     | otherwise = lookupTitle x ps

lookupTitles :: [String] -> [Product] -> [Maybe Product]
lookupTitles titles products = map (`lookupTitle` products) titles --и тут map
