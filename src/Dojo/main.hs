module Dojo.Main where 
import Data.Set (fromList, size)

countOnes :: Int -> Int -> Int
countOnes a b = somaList $ map countOnesNumber [a..b]
  where somaList = foldl (+) 0

countOnesNumber :: Int -> Int
countOnesNumber 0 = 0
countOnesNumber n = 
	modulus + countOnesNumber division
	where (division, modulus) = divMod n 2

differentDigits :: [Int] -> Int
differentDigits list = length listNonRepetedNumbers
	where listNonRepetedNumbers = filter (not . hasRepeatedDigits) list


hasRepeatedDigits :: Int -> Bool
hasRepeatedDigits n 
	| n > 9876543210 = False
	| otherwise = length digits /= length amount
    where		
		digits = show n
		amount = takeWhile (not . leRepeated) (meAndRest digits) 
		
meAndRest :: [a] -> [(a, [a])]
meAndRest [] = [] 
meAndRest (x:xs) = (x, xs):meAndRest xs

leRepeated (i, rest) = elem i rest
