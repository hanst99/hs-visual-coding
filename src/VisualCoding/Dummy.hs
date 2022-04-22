-- | Dummy module so the tests have something to test
module VisualCoding.Dummy
  ( fibs )
where

-- | The fibonacci numbers
--
-- >>> take 10 fibs
-- [1,1,2,3,5,8,13,21,34,55]
fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
