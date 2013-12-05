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

  describe "Different digits" $ do
    it "is 2 when range is 0 to 1" $ do
      differentDigits [0..1] `shouldBe` 2
    it "is 3 when range is 0 to 2" $ do
      differentDigits [0..2] `shouldBe` 3
    it "is 11 when range is 0 to 10" $ do
      differentDigits [0..10] `shouldBe` 11
    it "is 11 when range is 0 to 11" $ do
      differentDigits [0..11] `shouldBe` 11
    it "is 11 when range is 0 to 11" $ do
      differentDigits [1..100000] `shouldBe` 32490

  describe "Has repeated digits" $ do
    it "is false when number is 1" $ do
      hasRepeatedDigits 1 `shouldBe` False
    it "is true when number is 11" $ do   
      hasRepeatedDigits 11 `shouldBe` True


