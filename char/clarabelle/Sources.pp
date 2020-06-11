#define DIR_TYPE models
#define INSTALL_TO models/char

#define anims listens

#define listens_frames 1 242

#begin maya_char_egg
  #define MAYA_PREFIX Clarabelle-
  #define EGG_PREFIX Clarabelle-
  #define POLY_MODEL zero
  #define ANIMS $[anims]
  #define CHAR_NAME Clarabelle
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -suppress-vcolor
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   Clarabelle-zero.egg \
   $[matrix Clarabelle-,$[anims],.egg]

  // Expose her eyes, pupils and the lenses in her glasses as separate
  // nodes, so we can play tricks to sort them correctly for transparency.
  #define OPTCHAR_OPTS \
    -flag Clarabelle_Eyes=eyes \
    -flag Clarabelle_PupilL=pupilL -flag Clarabelle_PupilR=pupilR \
    -flag Clarabelle_GlassLensR=glassR -flag Clarabelle_GlassLensR1=glassL
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   Clarabelle-zero.egg
  #define UNPAL_SOURCES \
   $[matrix Clarabelle-,$[anims],.egg]
  #define PHASE 5.5
#end install_egg
