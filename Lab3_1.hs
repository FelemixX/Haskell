data Product = Book String String | Cassette String | Disk String String Int deriving (Eq,Show)
--[(Book "Obeme" "Baraki"), (Book "Obamna" "Trumpet"), (Cassette "Stone"), (Cassette "Bruh"), (Disk "rock" "stone" 228), (Disk "cock" "pit" 1337)]
getTitle :: Product -> String
getTitle (Book x _) = x --У книги первым идет название, вторым автор. Надо просто взять первый элемент в массиве
getTitle (Cassette x) = x --У кассеты просто одно название
getTitle (Disk x _ _) = x --У диска название так же как у книги идет первым

getTitles :: [Product] -> [String]
getTitles [] = []
getTitles (x:xs) = (getTitle x) : getTitles xs --Так как у всех товаров название это первый аргумент - берем первый аргумент

bookAuthor :: Product -> Maybe String --Берем второй параметр
bookAuthor (Book _ x) =  Just x
bookAuthor (Cassette _) = Nothing
bookAuthor (Disk _ _ _) = Nothing

bookAuthors :: [Product] -> [String] --аналогично
bookAuthors [] = []
bookAuthors ((Book _ x):ps)   =  x : bookAuthors ps
bookAuthors ((Cassette _):ps)  =  bookAuthors ps
bookAuthors ((Disk _ _ _):ps) =  bookAuthors ps

getType :: Product -> String --Тип товара всегда первый не строковый параметр
getType (Book _ _)   = "Book"
getType (Cassette _)  = "Cassette"
getType (Disk _ _ _) = "Disk"

lookupTitle :: String -> [Product] -> Maybe Product --Делаем то же самое, но можем и не вернуть ничего
lookupTitle x [] = Nothing --Если ничего нет, то ничего и не вернем
lookupTitle x (p:ps) | (x == (getTitle p)) = Just p --Если условие выполнилось, то вернем Just p
                     | otherwise = lookupTitle x ps
 
lookupTitles :: [String] -> [Product] -> [Maybe Product]
lookupTitles [] _ = []
lookupTitles _ [] = []
lookupTitles (x:xs) p = if xn == Nothing then (lookupTitles xs p) else xn : (lookupTitles xs p) 
                        where xn = (lookupTitle x p)
