{-# LANGUAGE OverloadedStrings #-}
import System.FilePath.Glob
import Test.DocTest

main = do
  libSources <- glob "src/**/*.hs"
  exeSources <- glob "app/**/*.hs"
  doctest $ ["-isrc", "-iapp"] ++ libSources ++ exeSources
