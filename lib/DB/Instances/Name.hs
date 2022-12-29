{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DerivingVia        #-}
{-# LANGUAGE StandaloneDeriving #-}

{-# OPTIONS_GHC -Wno-orphans    #-}

module DB.Instances.Name where

import           Data.Text
import           Database.SQLite.Simple.FromField
import           Database.SQLite.Simple.ToField
import           Types.Name

deriving via Text instance ToField Name
deriving via Text instance FromField Name
