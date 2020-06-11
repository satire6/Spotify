#define DIR_TYPE models
//#define DATABASE jellybeanBank_cvs
#define INSTALL_TO models/char


#define anims bankOpen
#define bankOpen_frames 1 34

#begin maya_egg
  #define SOURCES jellybeanBank.mb
#end maya_egg

#begin maya_char_egg
  #define MAYA_PREFIX jellybeanBank-
  #define EGG_PREFIX jellybeanBank-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define CHAR_NAME jellybeanBank
#end maya_char_egg

//#begin soft_char_egg
//  #define SCENE_PREFIX jellybeanBellows-
//  #defer MODEL bellowsPump
//  #define EGG_PREFIX jellybeanBellows-
//  #define POLY_MODEL mod
//  #define ANIMS bellowsPump
//  #define CHAR_NAME jellybeanBellows
//#end soft_char_egg


#define OPTCHAR_OPTS \
   -no -TR 0,180,0 -TS 0.25

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix jellybeanBank-,zero bankOpen,.egg]
#end optchar_egg

//#begin optchar_egg
//  #define TARGET_DIR optchar
//  #define SOURCES \
//    $[matrix jellybeanBellows-,mod bellowsPump,.egg]
//#end optchar_egg

#begin install_egg
  // This one is installed to a different directory for historical reasons.
  #define INSTALL_TO models/estate
  #define SOURCES jellybeanBank.egg 
  #define PHASE 5.5
#end install_egg

#begin install_egg
  // Animated models are installed from the optchar dir.
  #define SOURCE_DIR optchar
  #define SOURCES \
    jellybeanBank-zero.egg 
//    jellybeanBellows-mod.egg 
  
// Animations don't go through egg-palettize.
  #define UNPAL_SOURCES \
    jellybeanBank-bankOpen.egg 
//    jellybeanBellows-bellowsPump.egg 
    
  #define PHASE 5.5
#end install_egg
	
