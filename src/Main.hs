module Main where

import Hakyll
import Data.Monoid

configuration :: Configuration
configuration = defaultConfiguration

main = hakyllWith configuration $ do
    -- Compile templates
    match "templates/*" $ compile templateCompiler

    match "css/*" $ do
        route idRoute
        compile compressCssCompiler

    match "fonts/*" $ do
        route idRoute
        compile copyFileCompiler

    create ["index.html"] $ do
        route idRoute
        let (~>)    = constField
            context = "title" ~> "Boulder Meshnet Project"

        compile $ do
            makeItem ""
                >>= loadAndApplyTemplate "templates/default.html" context
                >>= relativizeUrls
