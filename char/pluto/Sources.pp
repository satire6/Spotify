#define DIR_TYPE models
#define INSTALL_TO models/char
#define DATABASE pluto_cvs
 
#begin maya_char_egg
  #define MAYA_PREFIX pluto-
  #define MODEL 1000
  #define EGG_PREFIX pluto-
  #define POLY_MODEL 1000
  #define ANIMS walk sit neutral stand
  #define CHAR_NAME pluto
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX pluto-
  #define MODEL 500
  #define EGG_PREFIX pluto-
  #define POLY_MODEL 500
  #define CHAR_NAME pluto
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX pluto-
  #define MODEL 300
  #define EGG_PREFIX pluto-
  #define POLY_MODEL 300
  #define CHAR_NAME pluto
#end maya_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    pluto-1000.egg pluto-500.egg pluto-300.egg \
    pluto-walk.egg pluto-sit.egg pluto-neutral.egg pluto-stand.egg
  #define OPTCHAR_OPTS \
     // this scale is non-standard!!!
     -no -TR 0,180,0 -TS 0.75 \
     -expose joint_pupilL,joint_pupilR \
     -suppress joint_head \
     -flag 'head?front'=eyes
#end optchar_egg

#begin install_egg
  #define SOURCES plutoEyes.egg
  #define PHASE 6
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    pluto-1000.egg pluto-500.egg pluto-300.egg 
  #define UNPAL_SOURCES \
    pluto-walk.egg pluto-sit.egg pluto-neutral.egg pluto-stand.egg
  #define PHASE 6
#end install_egg
