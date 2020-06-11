#define DIR_TYPE models
#define INSTALL_TO models/bossbotHQ

#define nc_anims \
  food_belt1.mb food_belt2.mb
#define fltfiles $[wildcard *.flt]
#begin flt_egg
  #define SOURCES $[fltfiles]
#end flt_egg

#define mayafiles $[wildcard *.mb]
#begin maya_egg
  #define SOURCES $[filter-out $[nc_anims],$[wildcard *.mb]]
#end maya_egg

//for now we don't want every maya file
//#begin install_egg
//  #define SOURCES \ 
//        $[fltfiles:%.flt=%.egg] $[mayafiles:%.mb=%.egg]
//        #define PHASE 12
//#end install_egg

// belt2 character
#begin maya_char_egg
  #define MAYA_PREFIX food_
  #define EGG_PREFIX food_
  #define MODEL belt2
  #define POLY_MODEL belt2_model
  #define ANIMS belt2
  #define CHAR_NAME food_belt2
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    food_belt2_model.egg \
    food_belt2.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose uvj_WakeWhiteTide1 \ // wave
    -flag mesh_tide1
#end optchar_egg

// belt1 character
#begin maya_char_egg
  #define MAYA_PREFIX food_
  #define EGG_PREFIX food_
  #define MODEL belt1
  #define POLY_MODEL belt1_model
  #define ANIMS belt1
  #define CHAR_NAME food_belt1
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    food_belt1_model.egg \
    food_belt1.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose uvj_WakeWhiteTide1 \ // wave
    -flag mesh_tide1
#end optchar_egg

#begin install_egg
  #define SOURCES \
    CogGolfHub.egg \
    CogGolfCourtyard.egg  \
    BB_Elevator.egg \
    Coggolf_cart3.egg \
    BossbotEntranceRoom.egg \
    Connector_Tunnel_A.egg \
    BossbotTeeOffRoom.egg \
    Connector_Tunnel_B.egg \
    BossbotFairwayRoom_A.egg \
    BossbotGreenRoom_A.egg \ 
    BossbotKartBoardingRm.egg \ 
    BanquetInterior_1.egg\
    BossbotMazex4_C.egg \
    BossbotMazex3_straight_C.egg \
    BossbotMazex2_straight_C.egg \
    BossbotMazex1_C.egg \
    BanquetTableChairs.egg \
    bust_a_cog_ball_white.egg \
    bust_a_cog_hole.egg \
    bust_a_cog_ball_blue.egg \
    bust_a_cog_ball_cog.egg \
    bust_a_cog_ball_fire.egg \
    bust_a_cog_ball_green.egg \
    bust_a_cog_ball_orange.egg \
    bust_a_cog_ball_purple.egg \
    bust_a_cog_ball_red.egg \
    bust_a_cog_ball_unknown.egg \
    bust_a_cog_ball_yello.egg \
    bust_a_cog_ball_steel.egg \
    bust_a_cog_shooter.egg \
    bust_a_cog_background.egg \
    bust_a_cog_golf_green.egg \
    bust_a_cog_golf_flag.egg \
    mole_norm.egg \
    mole_hit.egg \
    mole_hole.egg \
    mole_cog.egg \
    canoffood.egg \
    BanquetIcons.egg \
    bottle.egg \
    BossTestSkyBox.egg \
    BossbotPresidentsRm.egg \
    BB_Inside_Elevator.egg \
    optchar/food_belt1_model.egg \
    optchar/food_belt2_model.egg
  #define PHASE 12
#end install_egg

#begin install_egg
  #define UNPAL_SOURCES \
      optchar/food_belt1.egg \     
      optchar/food_belt2.egg      
  #define EGG2BAM_OPTS -NC
  #define PHASE 12
#end install_egg

#printvar MAYA_LOCATION

