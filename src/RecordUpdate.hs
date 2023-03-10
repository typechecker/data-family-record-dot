{-# LANGUAGE CPP #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE RecordWildCards #-}
#if !MIN_VERSION_base(4,17,0)
{-# OPTIONS_GHC -Wno-unticked-promoted-constructors #-}
#endif

module RecordUpdate where

import DataFamily (Choice(..))
import qualified DataFamily as WhoIsB (Fam(FamB), Fam(field))

toggleBool :: WhoIsB.Fam B -> WhoIsB.Fam B
toggleBool b@WhoIsB.FamB{..} =
    b{ WhoIsB.field = not field}