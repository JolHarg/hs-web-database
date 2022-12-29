{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DerivingVia        #-}
{-# LANGUAGE StandaloneDeriving #-}

{-# OPTIONS_GHC -Wno-orphans    #-}

module DB.Instances.Email where

import           Data.Text
import           Database.SQLite.Simple.FromField
import           Database.SQLite.Simple.ToField
import           Types.Email

deriving via Text instance ToField Email
deriving via Text instance FromField Email
