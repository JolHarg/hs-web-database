{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DerivingVia        #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS_GHC -Wno-orphans    #-}

module DB.Instances.VerificationToken where

import           Data.UUID.Types
import           Database.SQLite.Simple.FromField
import           Database.SQLite.Simple.ToField
import           DB.Instances.UUID                ()
import           Types.VerificationToken

deriving via UUID instance ToField VerificationToken
deriving via UUID instance FromField VerificationToken
