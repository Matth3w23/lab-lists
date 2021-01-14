--------------------------------------------------------------------------------
-- Functional Programming (CS141)                                             --
-- Lab: Lists                                                                 --
--------------------------------------------------------------------------------

module Lab where

--------------------------------------------------------------------------------

import Data.Char (isDigit, toLower)

--------------------------------------------------------------------------------

-- without explicit brackets
numbers :: [Int]
numbers = 4 : 8 : 15 : 16 : 23 : 42 : []

-- with explicit brackets to show the associativity of cons
-- the number 4 is currently missing from the beginning of this list
numbers' :: [Int]
numbers' = 4 : (8 : (15 : (16 : 23 : (42 : []))))

-- syntactic sugar for lists
-- the number 42 is currently missing from the end of this list
numbers'' :: [Int]
numbers'' = [4,8,15,16,23,42]

--------------------------------------------------------------------------------

isPalindrome :: [Char] -> Bool 
isPalindrome x | x == reverse x = True
    | otherwise = False

--neatest code you'll ever see
validModuleCode :: [Char] -> Bool 
validModuleCode x = ([toLower (head x) , toLower(head (tail x))] == "cs") && (isDigit (head (tail (tail x))) && isDigit (head (tail (tail (tail x)))) && isDigit (head (tail (tail (tail (tail x))))))

--------------------------------------------------------------------------------
