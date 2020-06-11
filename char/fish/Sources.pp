#define DIR_TYPE models
#define INSTALL_TO models/char

#define anims swim
#define animsLoop swimLOOP 

// MAYA2EGG

#begin maya_char_egg
  #define MAYA_PREFIX clownFish-
  #define EGG_PREFIX clownFish-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  // The clownFish was mistakenly modeled in centimeters, thinking it
  // was modeled in feet.  The -ui option tells maya2egg to treat it
  // as feet anyway.
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -ui ft
  #define swim_frames 1
  #define CHAR_NAME clownFish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX nurseShark-
  #define EGG_PREFIX nurseShark-
  #define POLY_MODEL zero
  #define ANIMS $[anims] 
  #define swim_frames 1 80
  #define CHAR_NAME nurseShark
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX cutThroatTrout-
  #define EGG_PREFIX cutThroatTrout-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 250
  #define CHAR_NAME cutThroatTrout
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX devilRay-
  #define EGG_PREFIX devilRay-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 52
  #define CHAR_NAME devilRay
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX amoreEel-
  #define EGG_PREFIX amoreEel-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -ui in
  #define swim_frames 1 100
  #define CHAR_NAME amoreEel
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX starFish-
  #define EGG_PREFIX starFish-
  #define POLY_MODEL zero
  #define ANIMS $[anims] $[animsLoop]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -ui in
  #define swim_frames 1 55
  #define swimLoop_frames 1 10
  #define CHAR_NAME starFish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX pianoTuna-
  #define EGG_PREFIX pianoTuna-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 70
  #define CHAR_NAME pianoTuna
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX frozenFish-
  #define EGG_PREFIX frozenFish-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -ui in
  #define swim_frames 1 24
  #define CHAR_NAME frozenFish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX kingCrab-
  #define EGG_PREFIX kingCrab-
  #define POLY_MODEL zero
  #define ANIMS $[anims] $[animsLoop]
  #define swim_frames 1 150
  #define swimLoop_frames 1 38
  #define CHAR_NAME kingCrab
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX holeyMackerel-
  #define EGG_PREFIX holeyMackerel-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 200
  #define CHAR_NAME holeyMackerel
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX BearAcuda-
  #define EGG_PREFIX BearAcuda-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 180
  #define CHAR_NAME BearAcuda
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX seaHorse-
  #define EGG_PREFIX seaHorse-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 95
  #define CHAR_NAME seaHorse
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX poolShark-
  #define EGG_PREFIX poolShark-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 135
  #define CHAR_NAME poolShark
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX moonFish-
  #define EGG_PREFIX moonFish-
  #define POLY_MODEL zero
  #define ANIMS $[anims] $[animsLoop]
  #define swim_frames 1 448
  #define CHAR_NAME moonFish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX dogFish-
  #define EGG_PREFIX dogFish-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 169
  #define CHAR_NAME dogFish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX catFish-
  #define EGG_PREFIX catFish-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 159
  #define CHAR_NAME catFish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX balloonFish-
  #define EGG_PREFIX balloonFish-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 457
  #define CHAR_NAME balloonFish
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX PBJfish-
  #define EGG_PREFIX PBJfish-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define swim_frames 1 96
  #define CHAR_NAME PBJfish
#end maya_char_egg

// OPTCHAR

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   clownFish-zero.egg \
   $[matrix clownFish-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'eye?'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   nurseShark-zero.egg \ 
  $[matrix nurseShark-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'eyes'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   cutThroatTrout-zero.egg \
  $[matrix cutThroatTrout-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'eye'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   devilRay-zero.egg \
  $[matrix devilRay-,$[anims],.egg]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   pianoTuna-zero.egg \
  $[matrix pianoTuna-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -zero tuna_skel \
    -flag 'eye_?'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   starFish-zero.egg \
   $[matrix starFish-,$[anims] $[animsLoop],.egg]
  #define OPTCHAR_OPTS \
    -zero skeleton_GRP \
    -flag 'starFish_?eye'=transparent \
    -flag 'starFish_mouth'=transparent \
    -flag 'starFish_mic_billboard'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   amoreEel-zero.egg \
  $[matrix amoreEel-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'eyes'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   frozenFish-zero.egg \
  $[matrix frozenFish-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'polySurface*'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   holeyMackerel-zero.egg \
  $[matrix holeyMackerel-,$[anims],.egg]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   kingCrab-zero.egg \
  $[matrix kingCrab-,$[anims] $[animsLoop],.egg]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   BearAcuda-zero.egg \
  $[matrix BearAcuda-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'Glass'=transparent2
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   seaHorse-zero.egg \
  $[matrix seaHorse-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'sea_horse_eye_?'=transparent1 \
    -flag 'sea_horse_glass'=transparent2
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   poolShark-zero.egg \
  $[matrix poolShark-,$[anims],.egg]
  #define OPTCHAR_OPTS \
    -flag 'eyes'=transparent
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   moonFish-zero.egg \
  $[matrix moonFish-,$[anims] $[animsLoop],.egg]
  #define OPTCHAR_OPTS \
    -flag 'moonFish_eye?'=transparent1 \
    -flag 'moonFish_glass'=transparent2
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   dogFish-zero.egg \
  $[matrix dogFish-,$[anims],.egg]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   catFish-zero.egg \
  $[matrix catFish-,$[anims],.egg]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   balloonFish-zero.egg \
  $[matrix balloonFish-,$[anims],.egg]
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   PBJfish-zero.egg \
  $[matrix PBJfish-,$[anims],.egg]
#end optchar_egg

// INSTALL

#begin install_egg
  #define SOURCES bubble.egg
  #define PHASE 4
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   clownFish-zero.egg cutThroatTrout-zero.egg nurseShark-zero.egg \
   devilRay-zero.egg pianoTuna-zero.egg starFish-zero.egg amoreEel-zero.egg \
   frozenFish-zero.egg kingCrab-zero.egg holeyMackerel-zero.egg BearAcuda-zero.egg \
   seaHorse-zero.egg poolShark-zero.egg moonFish-zero.egg dogFish-zero.egg \
   catFish-zero.egg balloonFish-zero.egg PBJfish-zero.egg

  // Don't compress the fish swim animations.  Many of these just seem
  // to compress very poorly.
  #define UNPAL_SOURCES_NC \
   $[matrix clownFish-,$[anims],.egg] \
   $[matrix cutThroatTrout-,$[anims],.egg] \
   $[matrix nurseShark-,$[anims],.egg] \
   $[matrix amoreEel-,$[anims],.egg] \
   $[matrix devilRay-,$[anims],.egg] \
   $[matrix pianoTuna-,$[anims],.egg] \
   $[matrix starFish-,$[anims] $[animsLoop],.egg] \
   $[matrix frozenFish-,$[anims],.egg] \
   $[matrix kingCrab-,$[anims] $[animsLoop],.egg] \
   $[matrix holeyMackerel-,$[anims],.egg] \
   $[matrix BearAcuda-,$[anims],.egg] \
   $[matrix seaHorse-,$[anims],.egg] \
   $[matrix poolShark-,$[anims],.egg] \
   $[matrix moonFish-,$[anims] $[animsLoop],.egg] \
   $[matrix dogFish-,$[anims],.egg] \
   $[matrix catFish-,$[anims],.egg] \
   $[matrix balloonFish-,$[anims],.egg] \
   $[matrix PBJfish-,$[anims],.egg]
  #define PHASE 4
#end install_egg
