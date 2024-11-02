{-# LANGUAGE DerivingVia        #-}
{-# LANGUAGE TemplateHaskell    #-}
{-# OPTIONS_GHC -Wno-orphans    #-}

module DB.Instances.User where

import Data.Model.User
import DB.Instances.Email             ()
import DB.Instances.Name              ()
import DB.Instances.Password          ()
import DB.Instances.TH
import DB.Instances.Username          ()
import DB.Instances.UserType          ()
import DB.Instances.UUID              ()
import DB.Instances.VerificationToken ()
import Types.User

deriveDBInstances modelUser
