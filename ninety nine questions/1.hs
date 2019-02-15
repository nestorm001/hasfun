myLast :: [a] -> a
myLast [] = error "Empty list has NO end"
myLast [x] = x
myLast (_:xs) = myLast xs

myLast' [] = error "Empty list has NO end"
myLast' x = x !! (length x -1)

myLast'' x = last x