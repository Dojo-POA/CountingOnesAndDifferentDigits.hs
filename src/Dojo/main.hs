module Dojo.Main where 

countOnes :: Int -> Int -> Int
countOnes a b = somaList $ map countOnesNumber [a..b]
  where somaList = foldl (+) 0

countOnesNumber :: Int -> Int
countOnesNumber 0 = 0
countOnesNumber n = 
	modulus + countOnesNumber division
	where (division, modulus) = divMod n 2