#define DIR_TYPE models
#define INSTALL_TO models/char

#define anims walk idle

// MAYA2EGG

#begin maya_char_egg
  #define MAYA_PREFIX chip_
  #define EGG_PREFIX chip_
  #define POLY_MODEL 1000
  #define MODEL idle
  #define ANIMS $[anims]
  #define walk_frames 1 16
  #define idle_frames 1 60
  #define CHAR_NAME Chip
#end maya_char_egg

// medium LOD
#begin maya_char_egg
  #define MAYA_PREFIX chip_
  #define EGG_PREFIX chip_
  #define POLY_MODEL 500
  #define MODEL rig_med
  #define CHAR_NAME Chip
#end maya_char_egg

// low LOD
#begin maya_char_egg
  #define MAYA_PREFIX chip_
  #define EGG_PREFIX chip_
  #define POLY_MODEL 250
  #define MODEL rig_low
  #define CHAR_NAME Chip
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX dale_
  #define EGG_PREFIX dale_
  #define POLY_MODEL 1000
  #define MODEL idle
  #define ANIMS $[anims]
  #define walk_frames 0 20
  #define idle_frames 1 60
  #define CHAR_NAME Dale
#end maya_char_egg

// medium LOD
#begin maya_char_egg
  #define MAYA_PREFIX dale_
  #define EGG_PREFIX dale_
  #define POLY_MODEL 500
  #define MODEL rig_med
  #define CHAR_NAME Dale
#end maya_char_egg

// low LOD
#begin maya_char_egg
  #define MAYA_PREFIX dale_
  #define EGG_PREFIX dale_
  #define POLY_MODEL 250
  #define MODEL rig_low
  #define CHAR_NAME Dale
#end maya_char_egg

// OPTCHAR
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   dale_1000.egg dale_500.egg dale_250.egg \ 
  $[matrix dale_,$[anims],.egg]
  #define OPTCHAR_OPTS \
     -no -TR 0,180,0 -TS 3.0 \
     -flag dale:eye_left=eyes \
     -flag dale:eye_right=eyes \
     -flag dale:eye_blink_right=blink \
     -flag dale:eye_blink_left=blink \
     -flag dale:pupil_left=pupil_left \
     -flag dale:pupil_right=pupil_right
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   chip_1000.egg chip_500.egg chip_250.egg \ 
  $[matrix chip_,$[anims],.egg]
  #define OPTCHAR_OPTS \
     -no -TR 0,180,0 -TS 3.0 \
     -flag chip:eye_left=eyes \
     -flag chip:eye_right=eyes \
     -flag chip:eye_blink_right=blink \
     -flag chip:eye_blink_left=blink \
     -flag chip:pupil_left=pupil_left \
     -flag chip:pupil_right=pupil_right
#end optchar_egg

// INSTALL

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   chip_1000.egg chip_500.egg chip_250.egg \
   dale_1000.egg dale_500.egg dale_250.egg
  #define UNPAL_SOURCES \
   $[matrix chip_,$[anims],.egg] \
   $[matrix dale_,$[anims],.egg]
  #define PHASE 6
#end install_egg
