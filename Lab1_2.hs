module Lab_1 where

max3 a b c = max a (max b c) --Эквивалентно a <=> (b <=> c)

min3 a b c = min a (min b c) --Эквивалентно a <=> (b <=> c)

sort2 a b = (min a b, max a b) --Смотрим предыдущие функции

bothTrue :: Bool -> Bool -> Bool
bothTrue a b = if a == True then 
    if b == True then True
        else False
            else False

solve2 :: Double -> Double -> (Bool,Double)
solve2 a b = if a == 0 then (False, 0.0)
    else (True, (-b) / a)

isParallel :: (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int) -> Bool
isParallel a b c d = if ((snd b - snd a)* (fst d - fst c)  - (snd d - snd c)* (fst b - fst a) ) == 0 then True --snd - второй элемент в кортеже, fst - первый
    else False

isIncluded :: (Int, Int) -> Int -> (Int, Int) -> Int -> Bool
isIncluded c1 r1 c2 r2 = if (fst c1 - fst c2)^2 + (snd c1 - snd c2) ^ 2  < (r1-r2) ^ 2 && r2 < r1 then True --https://otvet.mail.ru/question/19736131 предки подсказали
    else False

isRectangular :: (Int, Int) -> (Int, Int) -> (Int, Int) -> Bool  --Воспользуемся теоремой Пифагора и знаниями школьной математики да посчитаем, чо 
isRectangular a b c = if ((fst b - fst a) * (fst c - fst a) + (snd b - snd a) * (snd c - snd a)) == 0 || ((fst c - fst b) * (fst a - fst b) + (snd c - snd b) * (snd a - snd b)) == 0 || ((fst a - fst c) * (fst b - fst c) + (snd a - snd c) * (snd b - snd c)) == 0 then True
    else False

isTriangle a b c = if a + b > c && a + c > b && b + c > a then True --Добро пожаловать в ~9 класс геометрии
    else False

isSorted a b c = if (a >= b && b >= c) || (a <= b && b <= c) then True --Вот бы тут был перегруженный оператор сравнения...
    else False
