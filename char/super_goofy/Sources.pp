#define DIR_TYPE models
#define INSTALL_TO models/char

#define goofyCostumeAnims default neutral posedown posedown2 posedown3 \
                                            walkStrut walkStrut2
                                            
#define nc_anims neutral

#define neutral_frames 1 154

//Do the models first
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_goofyCostume_
    #define EGG_PREFIX tt_a_chr_csc_goofyCostume_
    #define MODEL zero_default
    #define POLY_MODEL 1200
    #define CHAR_NAME super_goofy
    #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]  -subset goofyHC:tt_m_chr_csc_goofyEyesClosed_1200  \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyEyesOpen_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyHead_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyNose_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyTeeth_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyMask_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyHairTuft_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyEars_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyHat_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyBody_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyCape_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyLeftArm_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyRightArm_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyLeftHand_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyRightHand_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyLeftFoot_1200 \
                                                                          -subset goofyHC:tt_m_chr_csc_goofyRightFoot_1200                                                        
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_goofyCostume_
    #define EGG_PREFIX tt_a_chr_csc_goofyCostume_
    #define MODEL zero_default
    #define POLY_MODEL 800
    #define CHAR_NAME super_goofy
    #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset goofyHC:tt_m_chr_csc_goofyEyesClosed_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyLeftHand_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyRightHand_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyEyesOpen_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyCostume_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyLeftFoot_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyRightFoot_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyCape_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyLeftArm_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyRightArm_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyMask_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyEars_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyHat_800 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyHead_800
#end maya_char_egg

#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_goofyCostume_
    #define EGG_PREFIX tt_a_chr_csc_goofyCostume_
    #define MODEL zero_default
    #define POLY_MODEL 400
    #define CHAR_NAME super_goofy
    #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset goofyHC:tt_m_chr_csc_goofyEyesClosed_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyEyesOpen_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyCostume_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyLeftFoot_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyRightFoot_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyCape_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyLeftHand_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyRightHand_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyLeftArm_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyRightArm_400 \ 
                                                                         -subset goofyHC:tt_m_chr_csc_goofyMask_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyPupils_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyEars_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyHat_400 \
                                                                         -subset goofyHC:tt_m_chr_csc_goofyHead_400
#end maya_char_egg

//Animations independent of LODs
#begin maya_char_egg
    #define MAYA_PREFIX tt_a_chr_csc_goofyCostume_zero_
    #define EGG_PREFIX tt_a_chr_csc_goofyCostume_
    #define ANIMS  $[goofyCostumeAnims]
    #define CHAR_NAME super_goofy
#end maya_char_egg

#begin filter_char_egg
  #define TARGET_DIR PFS
  #define SOURCES \
    $[matrix tt_a_chr_csc_goofyCostume_,$[goofyCostumeAnims] 1200 800 400,.egg]
  #defer COMMAND \
    egg-rename -strip_prefix goofyHC: -d $[TARGET_DIR] $[sources]
#end filter_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix PFS/tt_a_chr_csc_goofyCostume_,$[goofyCostumeAnims] 1200 800 400,.egg]
  #define OPTCHAR_OPTS \
    -no -TR 0,180,0 -TS 0.25 \
    -flag 'tt_m_chr_csc_goofyEyesOpen*'=eyesOpen \
    -flag 'tt_m_chr_csc_goofyEyesClosed*'=eyesClosed 
#end optchar_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
     $[matrix tt_a_chr_csc_goofyCostume_,1200 800 400,.egg]
  #define PHASE 6
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
     $[matrix tt_a_chr_csc_goofyCostume_,$[filter-out $[nc_anims],$[goofyCostumeAnims]],.egg]
  #define PHASE 6
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
     $[matrix tt_a_chr_csc_goofyCostume_, $[nc_anims],.egg]
   #define EGG2BAM_OPTS -NC
  #define PHASE 6
#end install_egg
