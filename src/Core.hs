module Core where

import RIO

data Pipeline = Pipeline
    { steps :: [Step]
    }
    deriving (Eq, Show)

data Step = Step
    { name :: StepName
    , commands :: [Text]
    , image :: Image
    }
    deriving (Eq, Show)

data Build = Build
    {pipeline :: Pipeline}
    deriving (Eq, Show)

newtype StepName = StepName Text
    deriving (Eq, Show)

newtype Image = Image Text
    deriving (Eq, Show)

stepNameToText :: StepName -> Text
stepNameToText (StepName step) = step

imageToText :: Image -> Text
imageToText (Image image) = image
