module Lab_2 where

--Lab_2

naturalNumbers :: Integer -> [Integer] --| проверяет истинность выражения. Если истинно - выполняем
naturalNumbers 0 = []
naturalNumbers n | n > 0 = naturalNumbers(n - 1) ++ [n] --Если на входе ноль, отдадим пустой массив. Если на вход пришло что-то больше нуля, то начинаем перебирать с конца и делать конкатенацию элемента n-1 с n.
      | n < 0 = error "argument is less than zero"  --Если взять 2, то перед ним будет 1 - конкатенируем предшествующее с текущим и получаем 1, 2

naturalOddNumbers :: Integer -> [Integer]
naturalOddNumbers 0 = []
naturalOddNumbers n | n > 0 = naturalOddNumbers(n - 1) ++ [n * 2 - 1] --То же самое, что и в предыдущем, но проводим операцию с числами. Нечетные останутся нечетными, а четные станут нечетными
      | n < 0 = error "argument is less than zero"            --Да и я на самом деле хз что тут еще делать, не сильно понятно заданы рамки в коде задания

naturalEvenNumbers :: Integer -> [Integer]
naturalEvenNumbers 0 = []
naturalEvenNumbers n | n > 0 = naturalEvenNumbers(n - 1) ++ [2 * n]
      | n < 0 = error "asqurgument is less than zero"

squares :: Integer -> [Integer]
squares 0 = []
squares n | n > 0 = squares(n - 1) ++ [n * n]
      | n < 0 = error "argument is less than zero"

factorials :: Integer -> [Integer]
factorials 0 = []
factorials n | n > 0 = factorials(n - 1) ++ [fact n]
      | n < 0 = error "argument is less than zero"
  where
    fact 0 = 1
    fact n = n * fact (n-1)

degreesOfTwo :: Integer -> [Integer]
degreesOfTwo 0 = []
degreesOfTwo n | n > 0 = degreesOfTwo(n - 1) ++ [2^n]
      | n < 0 = error "argument is less than zero"

triangleNumbers 0 = []
triangleNumbers n | n > 0  = triangleNumbers(n-1)++[n * (n + 1) * 0.5] --Возьмем формулу из вики https://en.wikipedia.org/wiki/Triangular_number, где (n+1)/2 и будет решением
      | n < 0 = error "argument is less than zero"

pyramidalNumbers 0 = []
pyramidalNumbers n | n > 0  = pyramidalNumbers(n - 1) ++ [n * (n + 1) * (n + 2) / 6] -- Снова идем в вики https://en.wikipedia.org/wiki/Pyramidal_number
      | n < 0 = error "argument is less than zero"

--Lab 2_2

average :: [Double] -> Double
average a = let --то же самое, что where, но дает больше простора. Если where подразумевает что-то вроде интерфейса (а скорее даже совпадения паттерну, то let просто дает определять то что хочется)
    helper sum count [] = sum / count
    helper sum count (h : t) = helper (sum + h) (1.0 + count) (t)
    in helper 0 0 a

getElementByNumber :: Integer -> [a] -> a
getElementByNumber 1 (h : t) = h
getElementByNumber n (h : t)= getElementByNumber (n - 1) t

sumLists :: [Int] -> [Int] -> [Int]
sumLists [] [] = []
sumLists (h1 : t1) [] = [h1] ++ sumLists t1 []
sumLists [] (h2 : t2) = [h2] ++ sumLists [] t2
sumLists (h1 : t1) (h2 : t2) = [h1 + h2] ++ sumLists t1 t2

swapOddAndEvenIndexes :: [a] -> [a]
swapOddAndEvenIndexes [] = []
swapOddAndEvenIndexes (f : s : t) = [s] ++ [f] ++ swapOddAndEvenIndexes t
swapOddAndEvenIndexes (f : t) = [f] ++ swapOddAndEvenIndexes t

twopow :: Int -> Int
twopow n | n == 1 = 2
     | even n = twopow (n `div` 2) * twopow (n `div` 2) --div проверяет, сколько раз первое число может быть поделено на второе. Even проверяет четность
     | odd n = 2 * (twopow ((n - 1) `div` 2)) * (twopow ((n - 1) `div` 2)) --odd нечетность

removeOdd :: [Int] -> [Int]
removeOdd [] = []
removeOdd (h : t) | odd h = removeOdd t
        | otherwise = [h] ++ removeOdd t

removeEmpty :: [String] -> [String]
removeEmpty [] = []
removeEmpty (h : t) | isEmptyStr h = removeEmpty t
                  | otherwise = h : removeEmpty t
    where isEmptyStr [] = True
          isEmptyStr _ = False

removeEmpty' [] = []
removeEmpty' ("" : t) = removeEmpty' t
removeEmpty' (h : t) = h : removeEmpty' t

countTrue :: [Bool] -> Integer
countTrue a = let
    helper count [] = count
    helper count (h : t) | h==True = helper (1+count) (t)
                       | otherwise = helper (count) (t)
    in helper 0 a

makePositive :: [Integer] -> [Integer]
makePositive [] = []
makePositive (h : t) = [abs h] ++ makePositive(t)

delete :: Char -> String -> String
delete c [] = []
delete c (h:t) | h == c = delete c (t)
           | otherwise = h : delete c (t)

substitute :: Char -> Char -> String -> String
substitute c1 c2 [] = []
substitute c1 c2 (h : t) | h == c1 = c2 : substitute c1 c2 (t)
                   | otherwise = h : substitute c1 c2 (t)
