module Lab5 where

--1
average :: [Double] -> Double
average x = (foldr (\ a y -> a+y) 0.0 x) / (fromIntegral $ length x)
--average [1.5,1.3,1.2,1.9,2.1]

--2
scalProd :: [Double] -> [Double] -> Double
scalProd x y =  foldr (+) 0.0 (zipWith (*) x y)
--scalProd [1,2,3] [4,5,6]

--3
countEven :: [Int] -> Int
countEven = length . filter even
--countEven [1,2,5,8,2,23]

--3
quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (x:xs) = quicksort (filter (< x) xs) ++ [x] ++ quicksort (filter (>= x) xs)
--quicksort ["trrr","jhj","as","aa"]

--4
_quicksort :: (a -> a -> Bool) -> [a] -> [a]
_quicksort fc []     = []
_quicksort fc (x:xs) = _quicksort fc (filter (fc x) xs) ++ [x] ++ (_quicksort fc (filter (\ y -> not $ fc x y) xs))
--_quicksort (\ x y -> (length x) > (length y)) ["as","jhj","aa","trrr"] - По возрастанию
--_quicksort (\ x y -> (length x) < (length y)) ["as","jhj","aa","trrr"] - По убыванию