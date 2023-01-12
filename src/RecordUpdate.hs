{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards #-}
module RecordUpdate where

import DataFamily (Choice(..))
import qualified DataFamily as WhoIsB (Fam(FamB), Fam(field))

toggleBool :: WhoIsB.Fam B -> WhoIsB.Fam B
toggleBool b@WhoIsB.FamB{..} =
    b{ WhoIsB.field = not field}