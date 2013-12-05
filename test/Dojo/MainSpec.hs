module Dojo.MainSpec (spec) where

import Test.Hspec hiding (example)
import Test.QuickCheck
import Control.Exception (evaluate)
import Dojo.Main


spec :: Spec
spec = do
  describe "CoutingOnes" $ do
    it "is 1 when couting ones between 0 and 1" $ do
      countOnes 0 1 `shouldBe` 1
    it "is 2 when couting ones between 0 and 2" $ do
      countOnes 0 2 `shouldBe` 2
    it "is 4 when couting ones between 0 and 3" $ do
      countOnes 0 3 `shouldBe` 4
    it "is 21 when couting ones between 2 and 12" $ do
      countOnes 2 12 `shouldBe` 21
    it "is 239502115812196372 when couting ones between 1000000000000000 and 10000000000000000" $ do
      countOnes 1000000000000000 10000000000000000 `shouldBe` 239502115812196372




  describe "CoutingOnes for a single value" $ do
    it "is 0 when couting ones for 0" $ do
      countOnesNumber 0 `shouldBe` 0
    it "is 1 when couting ones for 1" $ do
      countOnesNumber 1 `shouldBe` 1
    it "is 1 when couting ones for 2" $ do
      countOnesNumber 2 `shouldBe` 1
    it "is 2 when couting ones for 3" $ do
      countOnesNumber 3 `shouldBe` 2
    it "is 2 when couting ones for 3" $ do
      countOnesNumber 7 `shouldBe` 3
