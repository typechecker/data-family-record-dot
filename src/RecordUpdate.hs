{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards #-}
module RecordUpdate where

import DataFamily (Choice(..))
import qualified DataFamily as WhoIsB (Fam(FamB), Fam(field))

incBool :: WhoIsB.Fam B -> WhoIsB.Fam B
incBool b@WhoIsB.FamB{..} =
    b{ WhoIsB.field = not field}