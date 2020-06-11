#define DIR_TYPE models
#define INSTALL_TO models/char

#define plutoCostumeAnims default sitLoop sitStart sitStop \
                                            walk

//Do the models first
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_plutoCostume_
    #define EGG_PREFIX tt_a_chr_csc_plutoCostume_
    #define MODEL zero_default
    #define POLY_MODEL 1200
    #define CHAR_NAME super_pluto
    #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]  -subset Pluto:tt_m_chr_csc_plutoEyesClosed_1200  \
                                                                          -subset Pluto:tt_m_chr_csc_plutoEyesOpen_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoNose_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoTongue_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoBandana_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoLeftEar_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoRightEar_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoEarBuds_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoHat_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoTail_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoBody_1200 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoHat_1200                                                        
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_plutoCostume_
    #define EGG_PREFIX tt_a_chr_csc_plutoCostume_
    #define MODEL zero_default
    #define POLY_MODEL 800
    #define CHAR_NAME super_pluto
    #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]  -subset Pluto:tt_m_chr_csc_plutoEyesClosed_800  \
                                                                          -subset Pluto:tt_m_chr_csc_plutoEyesOpen_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoNose_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoTongue_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoBandana_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoLeftEar_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoRightEar_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoEarBuds_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoHat_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoTail_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoBody_800 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoHat_800         
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_plutoCostume_
    #define EGG_PREFIX tt_a_chr_csc_plutoCostume_
    #define MODEL zero_default
    #define POLY_MODEL 400
    #define CHAR_NAME super_pluto
    #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]  -subset Pluto:tt_m_chr_csc_plutoEyesClosed_400  \
                                                                          -subset Pluto:tt_m_chr_csc_plutoEyesOpen_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoNose_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoTongue_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoBandana_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoLeftEar_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoRightEar_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoEarBuds_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoHat_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoTail_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoBody_400 \
                                                                          -subset Pluto:tt_m_chr_csc_plutoHat_400         
#end maya_char_egg

//Animations independent of LODs
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_plutoCostume_zero_
    #define EGG_PREFIX tt_a_chr_csc_plutoCostume_
    #define ANIMS  $[plutoCostumeAnims]
    #define CHAR_NAME super_pluto
#end maya_char_egg

#begin filter_char_egg
  #define TARGET_DIR PFS
  #define SOURCES \
    $[matrix tt_a_chr_csc_plutoCostume_,$[plutoCostumeAnims] 1200 800 400,.egg]
  #defer COMMAND \
    egg-rename -strip_prefix Pluto: -d $[TARGET_DIR] $[sources]
#end filter_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix PFS/tt_a_chr_csc_plutoCostume_,$[plutoCostumeAnims] 1200 800 400,.egg]
  #define OPTCHAR_OPTS \
    -no -TR 0,180,0 \
    -flag 'tt_m_chr_csc_plutoEyesOpen*'=eyesOpen \
    -flag 'tt_m_chr_csc_plutoEyesClosed*'=eyesClosed 
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
     $[matrix tt_a_chr_csc_plutoCostume_, 1200 800 400,.egg]
  #define PHASE 6
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
     $[matrix tt_a_chr_csc_plutoCostume_,$[plutoCostumeAnims],.egg]
  #define EGG2BAM_OPTS -NC
  #define PHASE 6
#end install_egg
