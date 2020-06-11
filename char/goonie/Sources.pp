#define DIR_TYPE models
#define INSTALL_TO models/char

#define anims walk collapse recovery

// MAYA2EGG

#begin maya_char_egg
  #define MAYA_PREFIX Cog_Goonie-
  #define EGG_PREFIX Cog_Goonie-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define walk_frames 1 48
  #define CHAR_NAME Cog_Goonie

  // Get the walk animation out at 48 frames/sec, to reduce perceived
  // jitter.
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -fro 48
#end maya_char_egg

// OPTCHAR

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   Cog_Goonie-zero.egg \ 
  $[matrix Cog_Goonie-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag eye \
    -flag hardHat=hard_hat \
    -flag security_hat_goonie=security_hat \  
    -expose joint40,joint8
#end optchar_egg


// INSTALL

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   Cog_Goonie-zero.egg

  // Compression introduces a lot of artifacts too.
  #define UNPAL_SOURCES_NC \
   $[matrix Cog_Goonie-,$[anims],.egg]
  #define PHASE 9
#end install_egg
