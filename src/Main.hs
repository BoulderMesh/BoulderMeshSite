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

    create ["index.html"] $ do
        route idRoute
        compile $ do
            makeItem ""
                >>= loadAndApplyTemplate "templates/default.html" mempty
                >>= relativizeUrls
