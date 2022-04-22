{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}
module VisualCoding.Web
where

import Yesod

data App = App

mkYesod "App" [parseRoutes|
  / IndexR GET
|]

instance Yesod App

getIndexR :: Handler Html
getIndexR = defaultLayout [whamlet|
   <h1> Hello World 
  |]
