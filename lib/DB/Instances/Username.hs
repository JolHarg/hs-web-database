{-# LANGUAGE DerivingVia #-}
{-# OPTIONS_GHC -Wno-orphans    #-}

module DB.Instances.Username where

import Data.Text
import Database.SQLite.Simple.FromField
import Database.SQLite.Simple.ToField
import Types.Username

deriving via Text instance ToField Username
deriving via Text instance FromField Username
