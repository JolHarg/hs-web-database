{-# LANGUAGE DataKinds        #-}
{-# LANGUAGE DerivingVia      #-}
{-# LANGUAGE TypeApplications #-}
{-# OPTIONS_GHC -Wno-orphans    #-}

module DB.Instances.UserType where

import           Database.SQLite.Simple.FromField
import           Database.SQLite.Simple.Ok
import           Database.SQLite.Simple.ToField
import           Types.UserType

instance ToField UserType where
    toField Normal    = toField @String "NORMAL"
    toField Admin     = toField @String "ADMIN"
    toField Superuser = toField @String "SUPERUSER"

instance FromField UserType where
    fromField a = case fromField a of
        Ok "NORMAL"    -> pure Normal
        Ok "ADMIN"     -> pure Admin
        Ok "SUPERUSER" -> pure Superuser
        Ok x           -> fail $ "No such UserType: " <> x
        Errors x       -> Errors x
