double x = x + x
triple x = double x + x
doubleAndPlus x y = double x + double y
doubleSmaller x y = if x < y then double x else double y
doubleAndAddAll x y z = double x + double y + double z

length' xs = sum [1 | _ <- xs]

fibonacci :: (Integral a) => a -> a
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1) 

nextTripleIfCurrentNIsLessThanN :: (Integer, Integer, Integer) -> Integer -> (Integer, Integer, Integer)
nextTripleIfCurrentNIsLessThanN (currentN, x, y) n = if currentN < n
then nextTripleIfCurrentNIsLessThanN (currentN + 1, y, x + y) n
else (currentN, x, y)

thirdElementOfTriple :: (x,y,z) -> z
thirdElementOfTriple (x,y,z) = z

fibonacci' :: Integer -> Integer
fibonacci' n = thirdElementOfTriple (nextTripleIfCurrentNIsLessThanN (0,0,1) n)

fibs::[Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibonacci'' :: Int -> Integer
fibonacci'' n = (take n fibs)!!(n - 1)
