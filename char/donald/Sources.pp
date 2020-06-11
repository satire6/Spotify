#define DIR_TYPE models
#define INSTALL_TO models/char
#define DATABASE donald_cvs


#begin maya_char_egg
  #define MAYA_PREFIX DL_donald-
  #define MODEL 1000
  #define EGG_PREFIX DL_donald-
  #define POLY_MODEL 1000
  #define ANIMS walk neutral transition transBack
  #define CHAR_NAME donald
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX DL_donald-
  #define MODEL 500
  #define EGG_PREFIX DL_donald-
  #define POLY_MODEL 500
  #define CHAR_NAME donald
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX DL_donald-
  #define MODEL 250
  #define EGG_PREFIX DL_donald-
  #define POLY_MODEL 250
  #define CHAR_NAME donald
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX donald-wheel-
  #define MODEL 1000
  #define EGG_PREFIX donald-wheel-
  #define POLY_MODEL 1000
  #define ANIMS wheel
  #define CHAR_NAME donald
#end maya_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    donald-wheel-1000.egg donald-wheel-wheel.egg 
  #define OPTCHAR_OPTS \
     -no -TR 0,180,0 -TS 0.175 \
     -expose joint_pupilL,joint_pupilR \
     -suppress null_neck3 \
     -flag 'head?front'=eyes
#end optchar_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    DL_donald-1000.egg DL_donald-500.egg DL_donald-250.egg \
    DL_donald-walk.egg DL_donald-neutral.egg DL_donald-transition.egg \
    DL_donald-transBack.egg 
  #define OPTCHAR_OPTS \
    -no -TR 0,180,0 -TS 0.175 \
    -p meatALL,root \
    -p chn137,meatALL \
    -p jnt137_1,chn137 \
    -p jnt137_2,jnt137_1 \
    -p eff137,jnt137_2 \
    -p null_armL9,eff137 \
    -p null_armL12,eff137 \
    -p null_armL13,jnt137_2 \
    -p null_armL1_6,jnt137_1 \
    -p chn116,chn137 \
    -p jnt114_2,chn116 \
    -p eff116,jnt114_2 \
    -p null_armL1_7,chn137 \
    -p null_armL1_2,meatALL \
    -p null_armL2,null_armL1_2 \
    -p null_armL3,null_armL2 \
    -p null_armL11,null_armL3 \
    -p null_armL5,null_armL11 \
    -p null_armL14,null_armL2 \
    -p null_armL15,null_armL2 \
    -p null_armL1_1,null_armL1_2 \
    -p null9,null_armL1_1 \
    -p sk_r_arm,meatALL \
    -p chn139,sk_r_arm \
    -p jnt139_1,chn139 \
    -p jnt139_2,jnt139_1 \
    -p eff139,jnt139_2 \
    -p null_armR17,eff139 \
    -p null_armR21,eff139 \
    -p null_armR20,jnt139_2 \
    -p null_armR1_2_1,jnt139_1 \
    -p chn124,chn139 \
    -p jnt114_3,chn124 \
    -p eff124,jnt114_3 \
    -p null_armR1_7,chn139 \
    -p null_armR1_2,sk_r_arm \
    -p null_armR1_1,null_armR1_2 \
    -p null10,null_armR1_1 \
    -p null_armR2,null_armR1_2 \
    -p null_armR3,null_armR2 \
    -p null_armR4,null_armR3 \
    -p null_armR5,null_armR4 \
    -p null_armL21,null_armR2 \
    -p null_armL20,null_armR2 \
    -p null_armL19,null_armR2 \
    -p null_armL18,null_armR2 \
    -p joint_bodyParts,meatALL \
    -p joint_MAIN,joint_bodyParts \
    -p joint_pelvis,joint_MAIN \
    -p joint_Lhip,joint_pelvis \
    -p joint_butt,joint_pelvis \
    -p joint_tailTip,joint_butt \
    -p joint_Rhip,joint_pelvis \
    -p joint_belly,joint_MAIN \
    -p joint_shirtLB,joint_MAIN \
    -p joint_spineB,joint_shirtLB \
    -p joint_Rshoulder,joint_spineB \
    -p joint_Lshoulder,joint_spineB \
    -p hip_r1,joint_bodyParts \
    -p R_foot1,hip_r1 \
    -p R_ball1,R_foot1 \
    -p hip_l1,joint_bodyParts \
    -p L_foot1,hip_l1 \
    -p L_ball1,L_foot1 \
    -p joint_capAll,joint_bodyParts \
    -p joint_capBottom,joint_capAll \
    -p joint_capTop,joint_capAll \
    -p joint_capFold,joint_capAll \
    -p joint_capBall,joint_capFold \
    -p joint_baseNeck,joint_bodyParts \
    -p joint_midNeck,joint_baseNeck \
    -p joint_headAttach,joint_midNeck \
    -p joint_lowerBeak,joint_bodyParts \
    -p sk_r_hand,meatALL \
    -p null_armR19,sk_r_hand \
    -p null_armR,null_armR19 \
    -p null_thR1,null_armR \
    -p null_thR2,null_thR1 \
    -p null_thR3,null_thR2 \
    -p null_f2R1,null_armR \
    -p null_f2R2,null_f2R1 \
    -p null_f2R3,null_f2R2 \
    -p null_armR18,sk_r_hand \
    -p chn129,null_armR18 \
    -p jnt129_1,chn129 \
    -p jnt129_2,jnt129_1 \
    -p eff129,jnt129_2 \
    -p null_thR4,eff129 \
    -p null_thR5,jnt129_2 \
    -p null_thR6,jnt129_1 \
    -p sk_l_hand,meatALL \
    -p null_handL,sk_l_hand \
    -p null_handL2,null_handL \
    -p null_thL1,null_handL2 \
    -p null_thL2,null_thL1 \
    -p null_thL3,null_thL2 \
    -p null_f2L1,null_handL2 \
    -p null_f2L2,null_f2L1 \
    -p null_f2L3,null_f2L2 \
    -p null_armL10,sk_l_hand \
    -p chn127,null_armL10 \
    -p jnt127_1,chn127 \
    -p jnt127_2,jnt127_1 \
    -p eff127,jnt127_2 \
    -p null_thL6,eff127 \
    -p null_thL5,jnt127_2 \
    -p null_thL4,jnt127_1
#end optchar_egg


#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
     DL_donald-1000.egg  DL_donald-500.egg DL_donald-250.egg \
     donald-wheel-1000.egg
  #define UNPAL_SOURCES \
     DL_donald-walk.egg DL_donald-neutral.egg DL_donald-transition.egg \
     DL_donald-transBack.egg donald-wheel-wheel.egg
  #define PHASE 6
  // Channel compression really seems to break the classic chars.
  // Turn it off.
  #define EGG2BAM_OPTS -NC $[EGG2BAM_OPTS]
#end install_egg







