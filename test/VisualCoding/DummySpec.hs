module VisualCoding.DummySpec (spec) where

import VisualCoding.Dummy
import Test.Hspec

spec :: Spec
spec = do
  describe "fibs" $ do
    it "should contain the first couple of fibonnacci numbers" $ do
      take 10 fibs `shouldBe` [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
