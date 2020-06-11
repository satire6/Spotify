#define DIR_TYPE models
#define INSTALL_TO models/char
#define DATABASE mickey_cvs

// special start and stop instructions
#define wait_frames 2 69

#begin maya_char_egg
  #define MAYA_PREFIX mickey-
  #define EGG_PREFIX mickey-
  #define MODEL 1200-zero
  #define POLY_MODEL 1200
  #define CHAR_NAME mickey
#end maya_char_egg

// seperate step for anims so they don't need the LOD in thier names too
#begin maya_char_egg
  #define MAYA_PREFIX mickey-
  #define EGG_PREFIX mickey-
  #define ANIMS walk wait run \
    left-start left right-start right
  #define CHAR_NAME mickey
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX mickey-
  #define EGG_PREFIX mickey-
  #define MODEL 800-zero
  #define POLY_MODEL 800
  #define CHAR_NAME mickey
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX mickey-
  #define EGG_PREFIX mickey-
  #define MODEL 400-zero
  #define POLY_MODEL 400
  #define CHAR_NAME mickey
#end maya_char_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    mickey-1200.egg mickey-800.egg mickey-400.egg \
    mickey-wait.egg mickey-walk.egg mickey-run.egg \
    mickey-left-start.egg mickey-left.egg \
    mickey-right-start.egg mickey-right.egg
  #define OPTCHAR_OPTS \
     -no -TR 0,180,0 -TS 0.25 \
     -fixrest -zero sphere3,hpr -drop TheEarL,TheEarR \
     -expose sphere3,joint_pupilL,joint_pupilR \
     -suppress joint_headnull \
     -flag 'head?front'=eyes \
     -flag 'HeadFront'=eyes \
     -flag 'Head?Front'=eyes \
     -p root, -p chn17,root -p jnt17_1,chn17 -p eff17,jnt17_1 \
     -p chn6_Rfoot_1,root -p chn4_Lfoot_1,chn6_Rfoot_1 \
     -p jnt4_1,chn4_Lfoot_1 -p jnt4_2,jnt4_1 -p eff4,jnt4_2 \
     -p null91,jnt4_2 -p null90,null91 -p null92,jnt4_1 \
     -p jnt6_1,chn6_Rfoot_1 -p jnt6_2,jnt6_1 -p eff6,jnt6_2 \
     -p null98,jnt6_2 -p null97_1,null98 -p null99,jnt6_1 \
     -p chn8_Rleg_1,root -p chn15,chn8_Rleg_1 -p chn13,chn15 \
     -p chn3_Lleg_1,chn13 -p jnt3_1,chn3_Lleg_1 -p jnt13_1,jnt3_1 \
     -p eff13,jnt13_1 -p null1_1_16,jnt13_1 -p jnt3_2,jnt3_1 \
     -p eff3,jnt3_2 -p chn12,eff3 -p jnt12_1,chn12 -p eff12,jnt12_1 \
     -p null24_3,jnt12_1 -p null105,jnt3_2 -p null89,jnt3_1 \
     -p null1_1_2,null89 -p chn2_Rarm,chn15 -p jnt2_1,chn2_Rarm \
     -p jnt2_2,jnt2_1 -p eff2,jnt2_2 -p chn16_1,eff2 \
     -p chn1_Larm,chn16_1 -p jnt1_1,chn1_Larm -p jnt1_2,jnt1_1 \
     -p null79,jnt1_2 -p null78,null79 -p null77,jnt1_1 \
     -p chn10,chn1_Larm -p jnt10_1,chn10 -p eff10,jnt10_1 \
     -p null76,jnt10_1 -p chn16,chn16_1 -p eff1_2,chn16 \
     -p jnt16_1_1,chn16 -p eff16_1,jnt16_1_1 -p null143,jnt16_1_1 \
     -p jnt16_1,eff2 -p eff16,jnt16_1 -p null113_1,jnt16_1 \
     -p null87,jnt2_2 -p null86_1,null87 -p null85,jnt2_1 \
     -p chn11,chn2_Rarm -p jnt11_1,chn11 -p eff11,jnt11_1 \
     -p null84,jnt11_1 -p jnt8_1,chn8_Rleg_1 -p jnt15_1,jnt8_1 \
     -p eff15,jnt15_1 -p null1_3,jnt15_1 -p jnt8_2,jnt8_1 \
     -p eff8,jnt8_2 -p chn12_1,eff8 -p jnt12_1_1,chn12_1 \
     -p eff12_1,jnt12_1_1 -p null24_8,jnt12_1_1 -p null107,jnt8_2 \
     -p null96,jnt8_1 -p null27_3,null96 -p null29,root \
     -p null24_6,null29 -p null30,null29 -p null31,null30 \
     -p null60,root -p null27_4,null60 -p null27,null27_4 \
     -p null1_1_7,null27 -p null1_1_3,null1_1_7 -p hipskel,null1_1_3 \
     -p null1_1_1,hipskel -p null1_1_4_1,null1_1_1 \
     -p null1_1_9,null1_1_4_1 -p null1_1_10,null1_1_4_1 \
     -p null1_1,null1_1_10 -p null1_1_8,null1_1_1 -p null2,null1_1_8 \
     -p null111,null2 -p null110,null111 -p null109,null110 \
     -p null108,null109 -p null3,null2 -p null4,null3 -p null5,null4 \
     -p joint_headnull,null5 -p chn19,joint_headnull -p chn18,chn19 \
     -p jnt19_1,chn19 -p jnt18_1,jnt19_1 -p eff18,jnt18_1 \
     -p eff19,jnt19_1 -p joint?pupilL,joint_headnull \
     -p joint?pupilR,joint_headnull -p sphere3,joint_headnull \
     -p TheEarL,sphere3 -p TheEarR,sphere3 -p null15,null4 \
     -p null16,null15 -p null17,null16 -p null18,null17 \
     -p null19,null18 -p null20,null19 -p null21,null20 \
     -p null115_2,null21 -p Rwristcuff,null115_2 -p null115_1,null115_2 \
     -p null112_1,null115_1 -p null114,null112_1 -p null45,null112_1 \
     -p null47,null45 -p null48,null47 -p null116_1,null48 \
     -p null53,null45 -p null54,null53 -p null56,null45 \
     -p null57,null56 -p null50,null112_1 -p null51,null50 \
     -p null8,null4 -p null9,null8 -p null10,null9 -p null11,null10 \
     -p null12,null11 -p null13,null12 -p null14,null13 \
     -p null130,null14 -p null131,null130 -p null132_1,null131 \
     -p null133_1,null132_1 -p null138,null131 -p null139,null138 \
     -p null140,null139 -p null134,null130 -p null135,null134 \
     -p null136,null130 -p null137,null136 -p null141,null130 \
     -p Lwristcuff,null14 -p null1_1_24,null1_1_8 -p null1_2,null1_1_1 \
     -p null1_1_25,null1_2 -p null1_1_23,null1_2 -p null1_1_4_4,null1_2 \
     -p null1_1_22,null1_1_4_4 -p null1_1_1_1,null1_1_7 \
     -p null23_1,null1_1_1_1 -p null23,null1_1_1_1 -p null24,null23 \
     -p null24_1,null24 -p null25,null24 -p null26,null25 \
     -p null24_2,null1_1_1_1 -p null104,null24_2 -p null1_1_4,null1_1_7 \
     -p null27_1,null1_1_4 -p null23_4,null27_1 -p null28,null27_1 \
     -p null24_7,null28 -p null106,null24_7 -p null27_5,null27 \
     -p null60_4,null60 -p null60_3,null60_4 -p null60_2,null60_3 \
     -p null60_1,null60_2
#end optchar_egg


// Phase 3: install the make-a-toon models and anims
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    mickey-1200.egg mickey-800.egg mickey-400.egg 
  #define UNPAL_SOURCES \
    mickey-wait.egg mickey-walk.egg mickey-run.egg
  #define PHASE 3
#end install_egg

// Phase 3.5: install the models and anims
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    mickey-left-start.egg mickey-left.egg \
    mickey-right-start.egg mickey-right.egg 
  #define PHASE 3.5
#end install_egg

// install the closed eyes for blinks
#begin install_egg
  #define SOURCES \
    mickey_eyes_closed.egg
  #define PHASE 3
#end install_egg

