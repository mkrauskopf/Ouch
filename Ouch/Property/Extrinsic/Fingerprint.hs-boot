
{-------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--  Module      :  Ouch.Property.Extrinsic.FingerPrint
--  Maintainer  :  Orion Jankowski
--  Stability   :  Unstable
--  Portability :


    Copyright (c) 2010 Orion D. Jankowski

    This file is part of Ouch, a chemical informatics toolkit
    written entirely in Haskell.

    Ouch is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Ouch is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Ouch.  If not, see <http://www.gnu.org/licenses/>.

--------------------------------------------------------------------------------
-------------------------------------------------------------------------------}

module Ouch.Property.Extrinsic.Fingerprint (
    atomBits_OUCH
  , molBits_OUCH
  , molBits_N
  , molBits_ID
  , pathBits
  , (.||.)
  , (.|||.)


) where


import Data.ByteString.Lazy as L
import Data.Binary.Builder as B
import Data.Bits
import Data.Word
import Ouch.Structure.Atom
import Ouch.Structure.Bond
import {-# SOURCE #-} Ouch.Structure.Molecule
import Ouch.Property.Graph
import Ouch.Data.Atom
import Ouch.Data.Bond
import Data.Maybe
import Data.Set as Set
import Data.List as List
import Data.Map as Map
import qualified Data.Vector.Unboxed as U
import qualified Data.Vector as V




atomBits_OUCH :: Molecule -> Atom -> Builder
atomBits_RECURSIVE :: Int -> Molecule -> Atom -> Builder
molBits_N :: Int -> Molecule -> Builder
molBits_ID :: Int -> Molecule -> Builder




molBits_OUCH :: Molecule -> Builder
sizeBits_OUCH :: Molecule -> Builder
moleculeBits :: (Molecule -> Atom -> Builder) -> (Molecule -> Bond -> Builder) -> Int -> Molecule -> Builder
pathBits :: (Molecule -> Atom -> Builder) -> (Molecule -> Bond -> Builder) -> PGraph -> Builder
(.||.) :: Builder -> Builder -> Builder
(.|||.) :: Builder -> Builder -> Builder
(.||>.) :: Builder -> Builder -> Builder
pathIndex :: PGraph -> Int -> Int
















