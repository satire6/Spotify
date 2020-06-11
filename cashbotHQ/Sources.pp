#define DIR_TYPE models
#define INSTALL_TO models/cashbotHQ

#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

#begin maya_egg
  #define SOURCES $[wildcard *.mb]
#end maya_egg

// Begin cashbotHQ
#begin install_egg
  #define SOURCES \
    ZONE03a.egg ZONE04a.egg ZONE07a.egg ZONE08a.egg ZONE10a.egg \ 
    ZONE11a.egg ZONE13a.egg ZONE15a.egg ZONE17a.egg ZONE18a.egg \
    ZONE19a.egg ZONE22a.egg ZONE31a.egg connector_7cubeR2.egg \
    connector_7cubeL2.egg VaultDoorCover.egg \
    boiler_A1.egg boiler_A2.egg boiler_B1.egg boiler_B2.egg crates_A.egg crates_C1.egg \
    crates_D.egg crates_E.egg crates_F1.egg crates_G1.egg gears_A1.egg gears_B1.egg gears_B2.egg \
    gears_C1.egg gears_C2.egg shelf_A1.egg pipes_A1.egg pipes_A2.egg pipes_A3.egg pipes_A4.egg \
    pipes_A5.egg pipes_A6.egg pipes_B.egg pipes_C.egg pipes_D1.egg pipes_D2.egg pipes_D3.egg \ 
    pipes_D4.egg pipes_D5.egg pipes_E.egg \
    GoldBar.egg GoldBarStack.egg CBWoodCrate.egg CBMetalCrate.egg MoneyStack.egg MoneyBag.egg \
    CBCoin1.egg CashBotSafe.egg CashBotHQCshRegister.egg MintGear.egg MoneyStackPallet.egg \
    DoorFrame.egg shelf_A1Money.egg shelf_A1MoneyBags.egg shelf_A1Gold.egg MintGearPost.egg \
    DoubleCoinStack.egg DoubleGoldStack.egg
  #define PHASE 10
#end install_egg

// Begin cogHQ phase 6
//#begin install_egg
//  #define SOURCES \
//    SmokeStack_simple.egg WaterTowerSimple.egg Cog_Tunnel.egg
//  #define PHASE 6
//#end install_egg
