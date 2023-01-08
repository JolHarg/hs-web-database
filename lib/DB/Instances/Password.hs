{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DerivingVia        #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS_GHC -Wno-orphans    #-}

module DB.Instances.Password where

import           Data.Text
import           Database.SQLite.Simple.FromField
import           Database.SQLite.Simple.ToField
import           Types.Password

deriving via Text instance ToField Password
deriving via Text instance FromField Password
