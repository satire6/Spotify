#define DIR_TYPE models

#define INSTALL_TO models/char

#begin maya_char_egg
    #define MAYA_PREFIX tt_r_ara_TT_
    #define EGG_PREFIX tt_r_ara_TT_
    #define MODEL hydrant
    #define POLY_MODEL hydrant
    #define CHAR_NAME hydrant
#end maya_char_egg

#define hydrant_anims \
default fightCheer fightIidle fightIntoIdle fightSad \
firstMoveArmUp1 firstMoveArmUp2 firstMoveArmUp3 firstMoveIntoSleep \
firstMoveJump firstMoveJumpBalance firstMoveJumpSpin firstMoveOutOfSleep \
firstMoveSleepIdle firstMoveStruggle idle intoFightIdle victoryDance

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_ara_TT_hydrant_
    #define EGG_PREFIX tt_a_ara_TT_hydrant_
    #define ANIMS $[hydrant_anims]
    #define CHAR_NAME hydrant
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES tt_r_ara_TT_hydrant.egg $[matrix tt_a_ara_TT_hydrant_,$[hydrant_anims],.egg] 
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS]\
        -dart structured 
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
     tt_r_ara_TT_hydrant.egg $[matrix tt_a_ara_TT_hydrant_,$[hydrant_anims],.egg] 
  #define PHASE 5
#end install_egg
