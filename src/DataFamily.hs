{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DuplicateRecordFields #-}
module DataFamily where

import Data.Kind (Type)

data Choice = A | B

data family Fam :: Choice -> Type

newtype instance Fam A = FamA{ field :: Int }
newtype instance Fam B = FamB{ field :: Bool }