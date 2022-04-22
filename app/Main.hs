module Main where

import VisualCoding.Web ( App (..) )
import Yesod

main :: IO ()
main = warp 3000 App
