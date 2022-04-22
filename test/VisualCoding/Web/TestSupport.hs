module VisualCoding.Web.TestSupport
  ( module Yesod.Test
  , module Test.Hspec
  , module VisualCoding.Web
  , withApp
  , it
  , describe
  )
where

import VisualCoding.Web
import Yesod.Test
import Test.Hspec hiding (it, describe)

withApp :: YesodSpec App -> Spec
withApp = yesodSpec App

it :: String -> YesodExample App () -> YesodSpec App
it = yit

describe :: String -> YesodSpec App -> YesodSpec App
describe = ydescribe
