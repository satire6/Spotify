#define DIR_TYPE models
#define INSTALL_TO models/golf

#begin copy_egg
  #define SOURCES hole1.mb hole2.mb hole3.mb hole4.mb hole5.mb hole6.mb hole7.mb hole8.mb hole9.mb hole10.mb hole11.mb hole12.mb hole13.mb hole14.mb hole15.mb hole16.mb hole17.mb hole18.mb windmillTest.mb 
  #define TARGETS hole1_camera.mb hole2_camera.mb hole3_camera.mb hole4_camera.mb hole5_camera.mb hole6_camera.mb hole7_camera.mb hole8_camera.mb hole9_camera.mb hole10_camera.mb hole11_camera.mb hole12_camera.mb hole13_camera.mb hole14_camera.mb hole15_camera.mb hole16_camera.mb hole17_camera.mb hole18_camera.mb windmillTest_camera.mb 
#end copy_egg

#define nc_anims \
  hole1_camera.mb hole2_camera.mb hole3_camera.mb hole4_camera.mb hole5_camera.mb hole6_camera.mb hole7_camera.mb hole8_camera.mb hole9_camera.mb hole10_camera.mb hole11_camera.mb hole12_camera.mb hole13_camera.mb hole14_camera.mb hole15_camera.mb hole16_camera.mb hole17_camera.mb hole18_camera.mb windmillTest_camera.mb golf_geyser.mb golf_waterfall.mb

   
#begin maya_egg
  #define SOURCES $[filter-out $[nc_anims],$[wildcard *.mb]]
#end maya_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole1_
  #define EGG_PREFIX hole1_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole1
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole1_cammodel.egg hole1_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole2_
  #define EGG_PREFIX hole2_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole2
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole2_cammodel.egg hole2_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole3_
  #define EGG_PREFIX hole3_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole3
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole3_cammodel.egg hole3_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole4_
  #define EGG_PREFIX hole4_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole4
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole4_cammodel.egg hole4_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole5_
  #define EGG_PREFIX hole5_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole5
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole5_cammodel.egg hole5_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg


#begin maya_char_egg
  #define MAYA_PREFIX hole6_
  #define EGG_PREFIX hole6_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole6
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole6_cammodel.egg hole6_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg


#begin maya_char_egg
  #define MAYA_PREFIX hole7_
  #define EGG_PREFIX hole7_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole7
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole7_cammodel.egg hole7_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole8_
  #define EGG_PREFIX hole8_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole8
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole8_cammodel.egg hole8_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole9_
  #define EGG_PREFIX hole9_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole9
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole9_cammodel.egg hole9_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole10_
  #define EGG_PREFIX hole10_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole10
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole10_cammodel.egg hole10_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole11_
  #define EGG_PREFIX hole11_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole11
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole11_cammodel.egg hole11_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole12_
  #define EGG_PREFIX hole12_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole12
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole12_cammodel.egg hole12_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole13_
  #define EGG_PREFIX hole13_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole13
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole13_cammodel.egg hole13_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg


#begin maya_char_egg
  #define MAYA_PREFIX hole14_
  #define EGG_PREFIX hole14_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole14
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole14_cammodel.egg hole14_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg


#begin maya_char_egg
  #define MAYA_PREFIX hole15_
  #define EGG_PREFIX hole15_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole15
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole15_cammodel.egg hole15_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole16_
  #define EGG_PREFIX hole16_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole16
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole16_cammodel.egg hole16_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg


#begin maya_char_egg
  #define MAYA_PREFIX hole17_
  #define EGG_PREFIX hole17_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole17
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole17_cammodel.egg hole17_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

#begin maya_char_egg
  #define MAYA_PREFIX hole18_
  #define EGG_PREFIX hole18_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME hole18
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        hole18_cammodel.egg hole18_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg


#begin maya_char_egg
  #define MAYA_PREFIX windmillTest_
  #define EGG_PREFIX windmillTest_
  #define POLY_MODEL cammodel
  #define MODEL camera
  #define ANIMS camera
  #define CHAR_NAME windmillTest
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset flyover 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
        windmillTest_cammodel.egg windmillTest_camera.egg
  #define OPTCHAR_OPTS \
     -expose camera1 -expose flyover
#end optchar_egg

// geyser character
#begin maya_char_egg
  #define MAYA_PREFIX golf_
  #define EGG_PREFIX golf_
  #define MODEL geyser
  #define POLY_MODEL geyser_model
  #define ANIMS geyser
  #define CHAR_NAME golf_geyser
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   golf_geyser_model.egg \
    golf_geyser.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose uvj_WakeWhiteTide1 \ // wave
    -flag mesh_tide1 
#end optchar_egg

// watefall character
#begin maya_char_egg
  #define MAYA_PREFIX golf_
  #define EGG_PREFIX golf_
  #define MODEL waterfall
  #define POLY_MODEL waterfall_model
  #define ANIMS waterfall
  #define CHAR_NAME golf_waterfall
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   golf_waterfall_model.egg \
    golf_waterfall.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose uvj_WakeWhiteTide1 \ // wave
    -flag mesh_tide1 
#end optchar_egg

// models

#begin install_egg
  #define SOURCES \
    chip_dale_enterance.egg \
    chip_dale_NoSign_enterance.egg \
    golfTrophy.egg \ 
    golf_ball.egg \
    golf_blocker.egg \
    golf_blocker.egg \
    hole1.egg \
    hole2.egg \
    hole3.egg \
    hole4.egg \
    hole5.egg \
    hole6.egg \
    hole7.egg \
    hole8.egg \
    hole9.egg \
    hole10.egg \
    hole11.egg \
    hole12.egg \
    hole13.egg \
    hole14.egg \
    hole15.egg \
    hole16.egg \
    hole17.egg \
    hole18.egg \
    putter.egg \
    golf_bridge.egg \
    golf_cart3.egg \
    golf_construction_sign.egg \
    golf_gazebo.egg \
    golf_gui.egg \
    golf_hub2.egg \
    golf_hub_tunnel_ent.egg \
    golf_outdoor_zone.egg \
    golf_tunnel1.egg \
    golf_tunnel2.egg \
    picnic_table.egg \
    picnic_apple.egg \
    picnic_chocolate_cake.egg \
    picnic_cupcake.egg \
    picnic_sandwich.egg \
    golf_windmill_b.egg \
    headPanel.egg \
    outdoor_zone_entrance.egg \
    physicsTest.egg \
    putter.egg \
    windmill.egg \
    windmillTest.egg \
    optchar/golf_geyser_model.egg \
    optchar/golf_waterfall_model.egg \
    picnic_basket.egg \
    Golfzone_To_Bossbot_Tunnel.egg \
    checker_game.egg \
    checker_marble.egg \
    game_table.egg \
    checker_tutorial.egg \
    regular_checker_game.egg \
    regular_checker_pieceblack.egg \
    regular_checker_piecewhite.egg \
    regularchecker_tutorial.egg \
    picnic_game_menu.egg \
    findfour_game.egg 
  #define PHASE 6
#end install_egg

// anims

#begin install_egg
  #define UNPAL_SOURCES \
    optchar/hole1_cammodel.egg \
    optchar/hole1_camera.egg \
    optchar/hole2_cammodel.egg \
    optchar/hole2_camera.egg \
    optchar/hole3_cammodel.egg \
    optchar/hole3_camera.egg \
    optchar/hole4_cammodel.egg \
    optchar/hole4_camera.egg \
    optchar/hole5_cammodel.egg \
    optchar/hole5_camera.egg \
    optchar/hole6_cammodel.egg \
    optchar/hole6_camera.egg \
    optchar/hole7_cammodel.egg \
    optchar/hole7_camera.egg \
    optchar/hole8_cammodel.egg \
    optchar/hole8_camera.egg \
    optchar/hole9_cammodel.egg \
    optchar/hole9_camera.egg \
    optchar/hole10_cammodel.egg \
    optchar/hole10_camera.egg \
    optchar/hole11_cammodel.egg \
    optchar/hole11_camera.egg \
    optchar/hole12_cammodel.egg \
    optchar/hole12_camera.egg \
    optchar/hole13_cammodel.egg \
    optchar/hole13_camera.egg \
    optchar/hole14_cammodel.egg \
    optchar/hole14_camera.egg \
    optchar/hole15_cammodel.egg \
    optchar/hole15_camera.egg \
    optchar/hole16_cammodel.egg \
    optchar/hole16_camera.egg \
    optchar/hole17_cammodel.egg \
    optchar/hole17_camera.egg \
    optchar/hole18_cammodel.egg \
    optchar/hole18_camera.egg \
    optchar/windmillTest_cammodel.egg \
    optchar/windmillTest_camera.egg \
    optchar/golf_geyser.egg \
    optchar/golf_waterfall.egg
  #define EGG2BAM_OPTS -NC
  #define PHASE 6
#end install_egg
