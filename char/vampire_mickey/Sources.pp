#define DIR_TYPE models
#define INSTALL_TO models/char

// special start and stop instructions
#define wait_frames 2 69
#define idle_frames 1 64
#define sneak_frames 1 64
#define into_sneak_frames 1 24
#define into_idle_frames 1 24

//Do the models first
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_mickey_vampire_
    #define EGG_PREFIX tt_a_chr_csc_mickey_vampire_
    #define MODEL default
    #define POLY_MODEL 1200
    #define CHAR_NAME vampire_mickey
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_mickey_vampire_
    #define EGG_PREFIX tt_a_chr_csc_mickey_vampire_
    #define MODEL 800_default
    #define POLY_MODEL 800
    #define CHAR_NAME vampire_mickey
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_mickey_vampire_
    #define EGG_PREFIX tt_a_chr_csc_mickey_vampire_
    #define MODEL 400_default
    #define POLY_MODEL 400
    #define CHAR_NAME vampire_mickey
#end maya_char_egg

//Animations independent of LODs
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_mickey_vampire_
    #define EGG_PREFIX tt_a_chr_csc_mickey_vampire_
    #define ANIMS  run walk wait into_idle idle into_sneak sneak
    #define CHAR_NAME vampire_mickey
#end maya_char_egg

#begin filter_char_egg
  #define TARGET_DIR PFS
  #define SOURCES \
    tt_a_chr_csc_mickey_vampire_1200.egg \
    tt_a_chr_csc_mickey_vampire_400.egg \
    tt_a_chr_csc_mickey_vampire_800.egg \
    tt_a_chr_csc_mickey_vampire_idle.egg tt_a_chr_csc_mickey_vampire_into_idle.egg \
    tt_a_chr_csc_mickey_vampire_sneak.egg tt_a_chr_csc_mickey_vampire_into_sneak.egg \
    tt_a_chr_csc_mickey_vampire_run.egg tt_a_chr_csc_mickey_vampire_walk.egg \
    tt_a_chr_csc_mickey_vampire_wait.egg
  #defer COMMAND \
    egg-rename -strip_prefix vampMM: -strip_prefix VampMM: \
                        -strip_prefix vampMM800: -strip_prefix vampMM400: \
                        -d $[TARGET_DIR] $[sources]
#end filter_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    PFS/tt_a_chr_csc_mickey_vampire_1200.egg \
    PFS/tt_a_chr_csc_mickey_vampire_400.egg \
    PFS/tt_a_chr_csc_mickey_vampire_800.egg \
    PFS/tt_a_chr_csc_mickey_vampire_idle.egg PFS/tt_a_chr_csc_mickey_vampire_into_idle.egg \
    PFS/tt_a_chr_csc_mickey_vampire_sneak.egg PFS/tt_a_chr_csc_mickey_vampire_into_sneak.egg \
    PFS/tt_a_chr_csc_mickey_vampire_run.egg PFS/tt_a_chr_csc_mickey_vampire_walk.egg \
    PFS/tt_a_chr_csc_mickey_vampire_wait.egg
  #define OPTCHAR_OPTS \
    -no -TR 0,180,0 -TS 0.25 \
    -fixrest -zero sphere3,hpr \
    -expose sphere3 \
    -suppress def_head \
    -flag 'tt_m_chr_csc_mickeyEyesOpen*'=eyesOpen \
    -flag 'tt_m_chr_csc_mickeyEyesClosed*'=eyesClosed \
    -p sphere3,def_head
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
     tt_a_chr_csc_mickey_vampire_1200.egg \
     tt_a_chr_csc_mickey_vampire_400.egg \
     tt_a_chr_csc_mickey_vampire_800.egg
  #define UNPAL_SOURCES \
     tt_a_chr_csc_mickey_vampire_idle.egg tt_a_chr_csc_mickey_vampire_into_idle.egg \
     tt_a_chr_csc_mickey_vampire_sneak.egg tt_a_chr_csc_mickey_vampire_into_sneak.egg \
     tt_a_chr_csc_mickey_vampire_run.egg tt_a_chr_csc_mickey_vampire_walk.egg \
     tt_a_chr_csc_mickey_vampire_wait.egg
  #define PHASE 3.5
#end install_egg
