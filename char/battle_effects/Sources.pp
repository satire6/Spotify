#define DIR_TYPE models
#define INSTALL_TO models/props
#define CHAN_SUFFIX -chan

// These are the various animation files generated within this directory

// new suit explosion and anim
#begin maya_char_egg
  #define MODEL suit_explosion
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX
  #define POLY_MODEL suit_explosion-mod
  #define ANIMS suit_explosion 
  #define CHAR_NAME suit_explosion
#end maya_char_egg

// suit stun and anim
#begin maya_char_egg
  #define MODEL stun
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX
  #define POLY_MODEL stun-mod
  #define ANIMS stun 
  #define CHAR_NAME stun
#end maya_char_egg

// splat and anim 
#begin maya_char_egg
  #define MODEL splat 
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX 
  #define POLY_MODEL splat-mod
  #define ANIMS splat 
  #define CHAR_NAME splat 
#end maya_char_egg

// spray 
#begin maya_char_egg
  #define MODEL spray
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX 
  #define POLY_MODEL spray 
  #define CHAR_NAME spray 
#end maya_char_egg

// dust cloud and anim
#begin maya_char_egg
  #define MODEL dust 
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX 
  #define POLY_MODEL dust-mod
  #define ANIMS dust 
  #define CHAR_NAME dust
#end maya_char_egg

// kapow and anim
#begin maya_char_egg
  #define MODEL kapow
  #define MAYA_PREFIX prop-
  #define EGG_PREFIX 
  #define POLY_MODEL kapow-mod
  #define ANIMS kapow 
  #define CHAR_NAME kapow
#end maya_char_egg


//
// OPTIMIZE
//

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    stun-mod.egg stun-chan.egg
  #define OPTCHAR_OPTS \
     -no -TR 0,180,0 -TS 0.25
#end optchar_egg


// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    splat-mod.egg splat-chan.egg    
  // We don't want to rotate splat; it will be billboarded at runtime.
  #define OPTCHAR_OPTS \
     -no -TS 0.25 \
     -flag 'splatter'=splat
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    dust-mod.egg dust-chan.egg    
  // We don't want to rotate dust; it will be billboarded at runtime.
  #define OPTCHAR_OPTS \
     -no -TS 0.25 \
     -flag 'TheCloud8'=cloud1 \
     -flag 'TheCloud6'=cloud2 \
     -flag 'TheCloud5'=cloud3 \
     -flag 'TheCloud4'=cloud4 \
     -flag 'TheCloud2'=cloud5 \
     -flag 'TheCloud11'=cloud6 \
     -flag 'TheCloud3'=cloud7 \
     -flag 'TheCloud10'=cloud8 \
     -flag 'TheCloud7'=cloud9 \
     -flag 'TheCloud1'=cloud10 \
     -flag 'TheCloud9'=cloud11
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    kapow-mod.egg kapow-chan.egg    
  // We don't want to rotate kapow; it will be billboarded at runtime.
  #define OPTCHAR_OPTS \
     -no -TS 0.25 \
     -flag 'TheLettering'=letters \
     -flag 'TheExplosion'=explosion
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    suit_explosion-mod.egg suit_explosion-chan.egg    
  // We don't want to rotate suit_explosion; it will be billboarded at runtime.
  #define OPTCHAR_OPTS \
     -expose joint-scale-POW,joint-scale-BOOM,joint-scale-BLAM \
     -no -TS 0.25
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    spray.egg    
  #define OPTCHAR_OPTS \
     -expose joint-attachSplash -no -TR 0,180,0 -TS 0.25 
#end optchar_egg

// INSTALL
// Finally, install everything that should be installed.
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    splat-mod.egg spray.egg stun-mod.egg suit_explosion-mod.egg
  #define UNPAL_SOURCES \
    splat-chan.egg stun-chan.egg suit_explosion-chan.egg
  #define PHASE 3.5
#end install_egg

// Finally, install everything that should be installed.
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    kapow-mod.egg dust-mod.egg
  #define UNPAL_SOURCES \
    kapow-chan.egg dust-chan.egg
  #define PHASE 5
#end install_egg
