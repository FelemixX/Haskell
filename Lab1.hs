--ЗАДАНИЕ №1
--1) 
:t (('a', 5::Int), "ab123"::String, [1.0, 2.0, 3.0]::[Double])

--2)
:t [(1.1::Double, True, ("abc"::String, 123::Integer))]

--3)
:t ([2, 3, 4]::[Integer], [5.0, 6.0, 7.0]::[Double], [(True, "abc")])

--4)
:t [[[(123::Integer, True)]]]

--5)
:t ((("abc", "def"), "ghi", ["jkl", "mno", "prs"]::[String]))

--6)
:t (([1.0, 2.0, 3.0]::[Double], [True, False, False, True]), [123, 01203912039120391203102930193102, 842389642834]::[Integer])

--7) В списках могут быть только элементы одинакового типа. [Integer, (Integer,[Bool])] - невозможно

--8)
:t (True, ([False, False, True]::[Bool], [123, 321]::[Integer]))

--9)
:t [([True, False]::[Bool], [1.0, 2.0]::[Double])]

--10)
:t [(2::Int, "abc"), (2::Int, "abc")]


--ЗАДАНИЕ №2

main :: IO ()
main = do

  --1)
  max3 2 (-1) 3

  --2)
  min3 1 (-10) 11

  --3)
  sort2 7 2

  --4)
  --:t bothTrue
  bothTrue True True
  bothTrue False True

  --5) solve2 (-1) 5
  solve2 0 0
  solve2 2 1

  --6)
  isParallel (1,1) (2,2) (2,0) (4,2)

  --7) 
  isIncluded (0,0) 5 (0,0) 10
  isIncluded (0,0) 5 (0,0) 4

  --8) 
  isRectangular (0,0) (2,0) (0,2)
  isRectangular (0,0) (2,0) (1,2)

  --9)
  isTriangle 3 4 5
  isTriangle 3 4 10

  --10)
  isSorted 1 2 3
  isSorted 2 3 1
