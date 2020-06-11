#define DIR_TYPE models
#define INSTALL_TO models/makeatoon

#begin maya_egg
  #define SOURCES \
  tt_m_ara_mat_smoke.mb \
  tt_m_ara_mat_room.mb
#end maya_egg

// tt_a_ara_mat_roomAnim character
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_ara_mat_
  #define ANIMS roomAnim
  #define CHAN_SUFFIX _roomDrop
  #define CHAR_NAME roomAnim
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subroot droppingJoint
#end maya_char_egg
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_ara_mat_
  #define ANIMS roomAnim
  #define CHAN_SUFFIX _roomSquish
  #define CHAR_NAME roomAnim
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subroot scalingJoint
#end maya_char_egg
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_ara_mat_
  #define ANIMS roomAnim
  #define CHAN_SUFFIX _propSquish
  #define CHAR_NAME roomAnim
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subroot propJoint
#end maya_char_egg
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_ara_mat_
  #define ANIMS roomAnim
  #define CHAN_SUFFIX _spotlightShake
  #define CHAR_NAME roomAnim
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subroot spotlightJoint
#end maya_char_egg
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_ara_mat_
  #define MODEL roomAnim
  #define POLY_MODEL roomAnim_model
  #define CHAR_NAME roomAnim
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] 
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    roomAnim_model.egg roomAnim_roomDrop.egg \
    roomAnim_roomSquish.egg roomAnim_propSquish.egg \
    roomAnim_spotlightShake.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose droppingJoint,scalingJoint,propJoint,spotlightJoint
#end optchar_egg

#begin install_egg
  #define SOURCES \
    tt_m_ara_mat_smoke.egg \
    tt_m_ara_mat_room.egg \
    optchar/roomAnim_model.egg optchar/roomAnim_roomDrop.egg \
    optchar/roomAnim_roomSquish.egg optchar/roomAnim_propSquish.egg \
    optchar/roomAnim_spotlightShake.egg
  #define PHASE 3
#end install_egg
