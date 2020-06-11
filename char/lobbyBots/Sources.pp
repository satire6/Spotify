#define DIR_TYPE models
#define INSTALL_TO models/char

// MAYA2EGG

#define out2Neutral_frames 1 36
#define neutral_frames 1 96
#define kick_frames 1 20

#begin maya_char_egg
  #define MAYA_PREFIX BotCam-
  #define EGG_PREFIX BotCam-
  #define POLY_MODEL zero
  #define ANIMS out2Neutral neutral
  #define CHAR_NAME BotCam
#end maya_char_egg
  
#begin maya_char_egg
  #define MAYA_PREFIX BotFoot-
  #define EGG_PREFIX BotFoot-
  #define POLY_MODEL zero
  #define ANIMS kick
  #define CHAR_NAME BotFoot
#end maya_char_egg


// OPTCHAR

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   BotCam-zero.egg BotFoot-zero.egg \ 
   BotCam-out2Neutral.egg \
   BotCam-neutral.egg \
   BotFoot-kick.egg
#end optchar_egg


// INSTALL

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   BotCam-zero.egg BotFoot-zero.egg

  #define UNPAL_SOURCES \
   $[matrix BotCam-out2Neutral.egg] \
   $[matrix BotCam-neutral.egg] \
   $[matrix BotFoot-kick.egg]
  #define PHASE 9
#end install_egg
