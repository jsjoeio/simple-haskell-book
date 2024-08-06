module Core where

import RIO

data Pipeline 
    = Pipeline 
        { steps :: [Step]
        }
    deriving (Eq, Show)

