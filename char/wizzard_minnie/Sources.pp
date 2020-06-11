#define DIR_TYPE models
#define INSTALL_TO models/char

#define witchMinnieAnims neutral neutral2 wait wait2 \
                            walkDainty walkDainty2 walkHalloween \
                            walkHalloween2 walkHalloween3 conjure

//Do the models first
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_witchMinnie_
    #define EGG_PREFIX tt_a_chr_csc_witchMinnie_
    #define MODEL zero_default
    #define POLY_MODEL 1200
    #define CHAR_NAME witch_minnie
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_witchMinnie_
    #define EGG_PREFIX tt_a_chr_csc_witchMinnie_
    #define MODEL 800_default
    #define POLY_MODEL 800
    #define CHAR_NAME witch_minnie
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_witchMinnie_
    #define EGG_PREFIX tt_a_chr_csc_witchMinnie_
    #define MODEL 400_default
    #define POLY_MODEL 400
    #define CHAR_NAME witch_minnie
#end maya_char_egg

//Animations independent of LODs
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_witchMinnie_zero_
    #define EGG_PREFIX tt_a_chr_csc_witchMinnie_
    #define ANIMS  $[witchMinnieAnims]
    #define CHAR_NAME witch_minnie
#end maya_char_egg

#begin filter_char_egg
  #define TARGET_DIR PFS
  #define SOURCES \
    $[matrix tt_a_chr_csc_witchMinnie_,$[witchMinnieAnims] 1200 800 400,.egg]
  #defer COMMAND \
    egg-rename -strip_prefix minnieCostumeZero: \
    -strip_prefix minnieCostume400: -strip_prefix minnieCostume800: \
    -d $[TARGET_DIR] $[sources]
#end filter_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix PFS/tt_a_chr_csc_witchMinnie_,$[witchMinnieAnims] 1200 800 400,.egg]
  #define OPTCHAR_OPTS \
    -no -TR 0,180,0 -TS 0.25 \
    -flag 'tt_m_chr_csc_minnieEyesOpen*'=eyesOpen \
    -flag 'tt_m_chr_csc_minnieEyesClosed*'=eyesClosed 
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
     $[matrix tt_a_chr_csc_witchMinnie_,$[witchMinnieAnims] 1200 800 400,.egg]
  #define PHASE 3.5
#end install_egg
