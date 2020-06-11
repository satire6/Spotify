#define DIR_TYPE models
#define INSTALL_TO models/karting

#begin maya_egg
  #define SOURCES $[wildcard *.mb]
#end maya_egg

#begin filter_egg
  #define TARGET_DIR optchar
  #define SOURCES Kart1_Final.egg Kart2_Final.egg Kart3_Final.egg Kart1_LOD_Final.egg Kart1_LOD3_Final.egg \
    Kart3_Final_LOD2.egg Kart3_Final_LOD3.egg Kart2_LOD2_Final.egg Kart2_LOD3_Final.egg
  #defer COMMAND \
    egg-trans -TS 40 -o $[target] $[source]  
#end filter_egg

#begin filter_egg
  #define TARGET_DIR optchar
  #define SOURCES accessory_frontMiddle_0.egg accessory_frontMiddle_1.egg accessory_frontMiddle_2.egg \
    accessory_frontMiddle_3.egg accessory_frontMiddle_4.egg accessory_frontMiddle_5.egg accessory_frontMiddle_6.egg \
    accessory_frontMiddle_7.egg accessory_frontMiddle_8.egg accessory_frontMiddle_9.egg accessory_frontMiddle_10.egg \
    accessory_backMiddle_0.egg accessory_backMiddle_1.egg accessory_backMiddle_2.egg accessory_backMiddle_3.egg \
    accessory_backMiddle_4.egg accessory_backMiddle_5.egg accessory_backMiddle_6.egg accessory_backMiddle_7.egg \
    accessory_front_ww_0.egg accessory_front_ww_1.egg accessory_front_ww_2.egg accessory_front_ww_3.egg \
    accessory_front_ww_4.egg accessory_front_ww_5.egg accessory_front_ww_6.egg accessory_front_ww_7.egg \
    accessory_rear_ww_0.egg accessory_rear_ww_1.egg accessory_rear_ww_2.egg accessory_rear_ww_3.egg \
    accessory_rear_ww_4.egg accessory_rear_ww_5.egg accessory_rear_ww_6.egg accessory_rear_ww_7.egg \
    accessory_rear_ww_8.egg accessory_rear_ww_9.egg accessory_rear_ww_10.egg accessory_rear_ww_11.egg \
    accessory_rear_ww_12.egg
  #defer COMMAND \
    egg-trans -TS 40 -o $[target] $[source]
#end filter_egg

#begin filter_egg
  #define TARGET_DIR optchar
  #define SOURCES kartShop.egg \
		  GasolineAlley_TT.egg KartShop_Interior.egg \
                  announcer.egg cone.egg GoofyStadium_Mailbox.egg GoofyStadium_Lamppost_Base1.egg GoofyStadium_TreeBase.egg \
                  kartPad.egg krate.egg Parkingspot.egg KartArea_Tires.egg typ_leaderBoardSign2.egg KartArea_WrenchJack.egg KartShowBlock.egg \
		  KartShowBlockSign.egg flag.egg 
  #defer COMMAND \
    egg-trans -TS 5 -o $[target] $[source]
#end filter_egg

// All karting models in phase 6
#begin install_egg
  #define SOURCES \
        // Race track models
	// series one
        RT_RuralB.egg RT_SpeedwayA.egg RT_UrbanA.egg \
	// series two
        RT_RuralB2.egg RT_SpeedwayB.egg RT_UrbanB.egg \
        // kart models
	optchar/Kart2_Final.egg optchar/Kart1_Final.egg optchar/Kart3_Final.egg optchar/Kart1_LOD_Final.egg optchar/Kart1_LOD3_Final.egg \
	optchar/Kart2_LOD2_Final.egg optchar/Kart2_LOD3_Final.egg optchar/Kart3_Final_LOD2.egg optchar/Kart3_Final_LOD3.egg \
	kart1_textures.egg kart2_textures.egg kart3_textures.egg rim_textures.egg accessory_textures.egg racing_textures.egg\
	// Accessory models
	optchar/accessory_frontMiddle_0.egg optchar/accessory_frontMiddle_1.egg optchar/accessory_frontMiddle_2.egg \
        optchar/accessory_frontMiddle_3.egg optchar/accessory_frontMiddle_4.egg optchar/accessory_frontMiddle_5.egg \
        optchar/accessory_frontMiddle_6.egg optchar/accessory_frontMiddle_7.egg optchar/accessory_frontMiddle_8.egg \
        optchar/accessory_frontMiddle_9.egg optchar/accessory_frontMiddle_10.egg \
	optchar/accessory_backMiddle_0.egg optchar/accessory_backMiddle_1.egg optchar/accessory_backMiddle_2.egg \
 	optchar/accessory_backMiddle_3.egg optchar/accessory_backMiddle_4.egg optchar/accessory_backMiddle_5.egg \
	optchar/accessory_backMiddle_6.egg optchar/accessory_backMiddle_7.egg \
	optchar/accessory_front_ww_0.egg optchar/accessory_front_ww_1.egg optchar/accessory_front_ww_2.egg \
	optchar/accessory_front_ww_3.egg optchar/accessory_front_ww_4.egg optchar/accessory_front_ww_5.egg \
	optchar/accessory_front_ww_6.egg optchar/accessory_front_ww_7.egg \
	optchar/accessory_rear_ww_0.egg optchar/accessory_rear_ww_1.egg optchar/accessory_rear_ww_2.egg \
 	optchar/accessory_rear_ww_3.egg optchar/accessory_rear_ww_4.egg optchar/accessory_rear_ww_5.egg \
	optchar/accessory_rear_ww_6.egg	optchar/accessory_rear_ww_7.egg optchar/accessory_rear_ww_8.egg \
        optchar/accessory_rear_ww_9.egg optchar/accessory_rear_ww_10.egg optchar/accessory_rear_ww_11.egg \
	optchar/accessory_rear_ww_12.egg \
	// Racing Gui
	speedometer.egg race_mapspot.egg \
	tickets.egg trophy.egg gag_panel.egg \
	// Racing Particles
	driftSmoke.egg particleSpark.egg \
	// Racing Props
	qbox.egg \
    // Racing Pie in yo face
    pie_splat_1.egg \
	// Goofy Speedway Models
	optchar/announcer.egg optchar/cone.egg optchar/GoofyStadium_Lamppost_Base1.egg optchar/GoofyStadium_Mailbox.egg \
     	optchar/GoofyStadium_TreeBase.egg optchar/kartShop.egg optchar/kartPad.egg optchar/krate.egg optchar/Parkingspot.egg \
	optchar/KartArea_Tires.egg optchar/typ_leaderBoardSign2.egg optchar/KartArea_WrenchJack.egg optchar/GasolineAlley_TT.egg \
	optchar/KartShowBlock.egg optchar/KartShowBlockSign.egg optchar/flag.egg optchar/KartShop_Interior.egg  \
        tt_m_ara_gfs_leaderBoardCrashed.egg 
  #define PHASE 6
#end install_egg

// This karting model should be in phase 4 because Toon Escape minigame uses it.
#begin install_egg
  #define SOURCES \
    racing_panel.egg 
  #define PHASE 4
#end install_egg
