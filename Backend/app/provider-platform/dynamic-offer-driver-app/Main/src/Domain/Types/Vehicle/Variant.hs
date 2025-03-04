{-
 Copyright 2022-23, Juspay India Pvt Ltd

 This program is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License

 as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. This program

 is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY

 or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details. You should have received a copy of

 the GNU Affero General Public License along with this program. If not, see <https://www.gnu.org/licenses/>.
-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE TemplateHaskell #-}

module Domain.Types.Vehicle.Variant where

import Data.Aeson
import Kernel.Prelude hiding (first)
import Kernel.Utils.GenericPretty
import Kernel.Utils.TH (mkFromHttpInstanceForEnum)
import Tools.Beam.UtilsTH (mkBeamInstancesForEnum)

data Variant = SEDAN | SUV | HATCHBACK | AUTO_RICKSHAW | TAXI | TAXI_PLUS
  deriving
    ( Show,
      Eq,
      Ord,
      Read,
      Generic,
      ToJSON,
      FromJSON,
      ToSchema,
      ToParamSchema,
      Enum,
      Bounded
    )
  deriving (PrettyShow) via Showable Variant

$(mkBeamInstancesForEnum ''Variant)

$(mkFromHttpInstanceForEnum ''Variant)
