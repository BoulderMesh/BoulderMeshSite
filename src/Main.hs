module Main where

import Hakyll
import Data.Monoid
import Data.Functor
import Debug.Trace
import System.FilePath.Posix (takeBaseName)

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

    match "pages/*.md" $ do
        route . customRoute $ (++ ".html") . takeBaseName . show
        compile $ do
            contents <- itemBody <$> pandocCompiler

            -- Set up the String -> String bindings for our template
            let (~>)    = constField
                context = "title"    ~> "Boulder Meshnet Project" <>
                          "contents" ~> contents

            pandocCompiler >>= loadAndApplyTemplate "templates/default.html" context
                           >>= relativizeUrls
