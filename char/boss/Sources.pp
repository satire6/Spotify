#define DIR_TYPE models
#define INSTALL_TO models/char

#define anims \
  Ff_speech ltTurn2Wave wave Ff_lookRt turn2Fb Ff_neutral Bb_neutral \
  Ff2Bb_spin Bb2Ff_spin Fb_neutral Bf_neutral Fb_firstHit \
  Fb_downNeutral Fb_downHit Fb_fall \
  Fb_down2Up Fb_downLtSwing Fb_downRtSwing \
  Fb_UpThrow Fb_DownThrow Fb_jump golf_swing

#define Ff_speech_frames 1 72
#define ltTurn2Wave_frames 1 48
#define wave_frames 1 48
#define Ff_lookRt_frames 1 72
#define turn2Fb_frames 1 72
#define Ff_neutral_frames 1 72
#define Bb_neutral_frames 1 72
#define Ff2Bb_spin_frames 1 48
#define Bb2Ff_spin_frames 1 48
#define Fb_neutral_frames 1 72
#define Bf_neutral_frames 1 72
#define Fb_firstHit_frames 1 72
#define Fb_downNeutral_frames 1 72
#define Fb_downHit_frames 1 48
#define Fb_fall_frames 1 144
#define Fb_down2Up_frames 1 60
#define Fb_downLtSwing_frames 1 72
#define Fb_downRtSwing_frames 1 72
#define Fb_UpThrow_frames 1 20
#define Fb_DownThrow_frames 1 20
#define Fb_jump_frames 1 72
#define golf_swing_frames 1 48

// All the sellbotBoss models are too large.
#define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -TS 0.12

#begin maya_egg
  // These files aren't animated, but they're associated with the boss
  // cog in this directory.

  #define SOURCES \
    bossCog-gearCollide.mb gearProp.mb bossCog-treads.mb bossbotBoss-golfclub.mb
#end maya_egg

// MAYA2EGG

// sellbot
// NOTE: all bosses except ossbot use these legs
#begin maya_char_egg
  #define MAYA_PREFIX sellbotBoss-
  #define EGG_PREFIX bossCog-legs-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-legs
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset car_GRP -subset legs_GRP
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX sellbotBoss-
  #define EGG_PREFIX sellbotBoss-torso-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-torso
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset body -subset gear8teeth -force-joint joint_lifeMeter
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX sellbotBoss-
  #define EGG_PREFIX sellbotBoss-head-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-head
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset head -subset pupils
#end maya_char_egg

// cashbot
#begin maya_char_egg
  #define MAYA_PREFIX cashbotBoss-
  #define EGG_PREFIX cashbotBoss-torso-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-torso
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset body -subset gear8teeth -force-joint joint_lifeMeter
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX cashbotBoss-
  #define EGG_PREFIX cashbotBoss-head-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-head
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset head
#end maya_char_egg

// lawbot
#begin maya_char_egg
  #define MAYA_PREFIX lawbotBoss-
  #define EGG_PREFIX lawbotBoss-torso-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-torso
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset upper_body -subset base -force-joint joint_lifeMeter
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX lawbotBoss-
  #define EGG_PREFIX lawbotBoss-head-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-head
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset head
#end maya_char_egg

// bossbot
#begin maya_char_egg
  #define MAYA_PREFIX bossbotBoss-
  #define EGG_PREFIX bossbotBoss-torso-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-torso
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset body -subset cog -force-joint joint_lifeMeter
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX bossbotBoss-
  #define EGG_PREFIX bossbotBoss-head-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-head
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset head
#end maya_char_egg

// NOTE: bossbot uses unique legs
#begin maya_char_egg
  #define MAYA_PREFIX bossbotBoss-
  #define EGG_PREFIX bossbotBoss-legs-
  #define POLY_MODEL zero
  #define CHAR_NAME bossCog-legs
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset cart1 -subset stand -subset golfcart
#end maya_char_egg


#begin maya_char_egg
  #define MAYA_PREFIX SB_
  #define EGG_PREFIX bossCog-legs-
  #define ANIMS $[anims]
  #define CHAR_NAME bossCog-legs
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX SB_
  #define EGG_PREFIX bossCog-torso-
  #define ANIMS $[anims]
  #define CHAR_NAME bossCog-torso
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -force-joint joint_lifeMeter
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX SB_
  #define EGG_PREFIX bossCog-head-
  #define ANIMS $[anims]
  #define CHAR_NAME bossCog-head
#end maya_char_egg

// TOPSTRIP

#begin filter_char_egg
  #define TARGET_DIR topstrip
  #define SOURCES \
    $[matrix sellbotBoss cashbotBoss lawbotBoss bossbotBoss,-torso-zero.egg] \
    $[matrix bossCog-torso-,$[anims],.egg]
  #defer COMMAND \
    egg-topstrip -i -t joint_pelvis -d $[TARGET_DIR] $[sources]
#end filter_char_egg

#begin filter_char_egg
  #define TARGET_DIR topstrip
  #define SOURCES \
    $[matrix sellbotBoss cashbotBoss lawbotBoss bossbotBoss,-head-zero.egg] \
    $[matrix bossCog-head-,$[anims],.egg]
  #defer COMMAND \
    egg-topstrip -i -t joint34 -d $[TARGET_DIR] $[sources]
#end filter_char_egg


// OPTCHAR

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   $[matrix bossCog-legs-zero.egg] \
   $[matrix bossCog-legs-,$[anims],.egg]
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose joint_pelvis,joint_doorRear,joint_doorFront,joint_axle
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
   $[matrix bossbotBoss-legs-zero.egg]
// no anims yet
//   $[matrix bossbotBoss-legs-,$[anims],.egg]
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose wheel_b_right,wheel_b_left,wheel_f_right,wheel_f_left
#end optchar_egg

#begin optchar_egg
  #define SOURCE_DIR topstrip
  #define TARGET_DIR optchar
  #define SOURCES \
   $[matrix sellbotBoss cashbotBoss lawbotBoss bossbotBoss,-torso-zero.egg] \
   $[matrix bossCog-torso-,$[anims],.egg]
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -expose joint_lifeMeter,joint34,joint17
#end optchar_egg

#begin optchar_egg
  #define SOURCE_DIR topstrip
  #define TARGET_DIR optchar
  #define SOURCES \
   $[matrix sellbotBoss cashbotBoss lawbotBoss bossbotBoss,-head-zero.egg] \
   $[matrix bossCog-head-,$[anims],.egg]
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -p pupils,joint34
#end optchar_egg

// INSTALL

#begin install_egg
  #define UNPAL_SOURCES \
   bossCog-gearCollide.egg

  #define SOURCES \
   gearProp.egg bossCog-treads.egg

  #define PHASE 9
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   bossCog-legs-zero.egg 

  // Don't compress the anims for now.
  #define UNPAL_SOURCES_NC \
   $[matrix bossCog-legs-,$[anims],.egg]

  #define PHASE 9
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   sellbotBoss-torso-zero.egg

  // Don't compress the anims for now.
  #define UNPAL_SOURCES_NC \
   $[matrix bossCog-torso-,$[anims],.egg]

  #define PHASE 9
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   sellbotBoss-head-zero.egg

  // Don't compress the anims for now.
  #define UNPAL_SOURCES_NC \
   $[matrix bossCog-head-,$[anims],.egg]

  #define PHASE 9
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   $[matrix cashbotBoss,-torso-zero.egg]

  #define PHASE 10
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   $[matrix cashbotBoss,-head-zero.egg]

  #define PHASE 10
#end install_egg


#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   $[matrix lawbotBoss,-torso-zero.egg]

  #define PHASE 11
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   $[matrix lawbotBoss,-head-zero.egg]

  #define PHASE 11
#end install_egg


#begin install_egg
  #define SOURCES \
    bossbotBoss-golfclub.egg 

  #define PHASE 12
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   $[matrix bossbotBoss,-torso-zero.egg]

  #define PHASE 12
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   $[matrix bossbotBoss,-head-zero.egg]

  #define PHASE 12
#end install_egg

#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
   bossbotBoss-legs-zero.egg 
  #define PHASE 12
#end install_egg

