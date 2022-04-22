module VisualCoding.WebSpec
  ( spec )
where

import VisualCoding.Web.TestSupport
import VisualCoding.Web

spec :: Spec
spec = withApp $ do
  describe "index page" $ do
    it "should have Hello World on it" $ do
      get IndexR
      statusIs 200
      bodyContains "Hello World"
