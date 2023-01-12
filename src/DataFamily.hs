{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedRecordDot #-}
module DataFamily where

import Data.Kind

data Choice = A | B

data family Fam :: Choice -> Type

newtype instance Fam A = FamA{ field :: Int }
newtype instance Fam B = FamB{ field :: Bool }

boolAsInt :: Fam B -> Int
boolAsInt b = if b.field then 1 else 0

intAsInt :: Fam A -> Int
intAsInt a = a.field