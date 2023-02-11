{-# OPTIONS_GHC -Wall #-}
module HW01 where

-- Exercise 1 -----------------------------------------

-- Get the last digit from a number
lastDigit :: Integer -> Integer
lastDigit = flip mod 10

-- Drop the last digit from a number
dropLastDigit :: Integer -> Integer
dropLastDigit = flip div 10

-- Exercise 2 -----------------------------------------

toRevDigits :: Integer -> [Integer]
toRevDigits n
  | n < 0     = []
  | n < 10    = [n]
  | otherwise = lastDigit n : toRevDigits (dropLastDigit n)

-- Exercise 3 -----------------------------------------

-- Double every second number in a list starting on the left.
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [2 * x]
doubleEveryOther (x:y:xs) = (2*x):y:doubleEveryOther xs

-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:xs)
  | x < 10    = x + sumDigits xs
  | otherwise = xSum + sumDigits xs
                where xSum = sumDigits (toRevDigits x)


-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn n = luhnSum `mod` 10 == 0
  where luhnSum = x + sumDigits (doubleEveryOther xs)
        (x:xs) = toRevDigits n

-- Exercise 6 -----------------------------------------

-- Towers of Hanoi for three pegs
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi = undefined