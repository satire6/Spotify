#define DIR_TYPE models

#define INSTALL_TO models/char

///////////////////////////////////////////

//Do the models first

#begin maya_char_egg
    #define MAYA_PREFIX tt_r_ara_
    #define EGG_PREFIX tt_r_ara_
    #define MODEL ttc_B2
    #define POLY_MODEL ttc_B2
    #define CHAR_NAME ttc_B2
#end maya_char_egg

#define ttc_B2_anims \
default dance
 
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_ara_ttc_B2_
    #define EGG_PREFIX tt_a_ara_ttc_B2_
    #define ANIMS $[ttc_B2_anims]
    #define CHAR_NAME ttc_B2
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES tt_r_ara_ttc_B2.egg $[matrix tt_a_ara_ttc_B2_,$[ttc_B2_anims],.egg]
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS]\
        -dart structured -expose def_left_door -expose def_right_door -expose sign_origin_joint
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
     tt_r_ara_ttc_B2.egg $[matrix tt_a_ara_ttc_B2_,$[ttc_B2_anims],.egg]
  #define PHASE 5
#end install_egg
