module Model where

import ClassyPrelude.Yesod
import Database.Persist.Quasi
import UnicodeVersion

-- You can define all of your database entities in the entities file.
-- You can find more information on persistent and how to declare entities
-- at:
-- http://www.yesodweb.com/book/persistent/
share [ mkPersist sqlSettings { mpsGenerateLenses = True
                              , mpsPrefixFields = False
                              }
      , mkMigrate "migrateAll"]
    $(persistFileWith lowerCaseSettings "config/models")
