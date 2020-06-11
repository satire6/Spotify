//=============================================================================
// Parties Source Assets
// By Schell Games
// Created: September 2008
//=============================================================================

#define DIR_TYPE models
#define INSTALL_TO models/parties

//=============================================================================
// File Conversions
//=============================================================================

// Must filter out animated assets because it is done through a maya_char_egg process
#begin maya_egg
  #define SOURCES $[patsubst cogPinata_%, , rocket_%, , jukebox_%, , trampoline_%, , tt_m_ara_pty_gagGlobe%, , tt_m_ara_pty_bannerJellybean%, , tt_m_ara_pty_bannerValentine%, , tt_m_ara_pty_heartWing%, , %,%, $[wildcard *.mb]]
#end maya_egg

// Cog "Pinata" (animated)
// cogPinata_rig.mb contains a rig referencing cogPinata_model.mb. These two are not exported.
#begin maya_char_egg
  #define MAYA_PREFIX cogPinata_
  #define EGG_PREFIX cogPinata_
  #define POLY_MODEL actor
  #define MODEL rig
  #define ANIMS \
    idle_anim up_anim down_anim \
    bodyHitBack_anim bodyHitFront_anim \
    headHitBack_anim headHitFront_anim
  #define CHAR_NAME cogPinata
#end maya_char_egg

// Because the animations maya refer to the rig model file
// We need to strip out the namespace created by maya (cog:) for the rig reference
#begin filter_char_egg
  #define TARGET_DIR refstrip
  #define SOURCES \
    $[matrix cogPinata_,idle up down bodyHitBack bodyHitFront headHitBack headHitFront,_anim.egg] \
    cogPinata_actor.egg
  #defer COMMAND \
    egg-rename -strip_prefix cog: -d $[TARGET_DIR] $[sources]
#end filter_char_egg

// Expose joints for Cog Pinata
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix refstrip/cogPinata_,idle up down bodyHitBack bodyHitFront headHitBack headHitFront,_anim.egg] \
    refstrip/cogPinata_actor.egg
  #define OPTCHAR_OPTS \
    -no -TS 0.25 \
    -expose head
#end optchar_egg

// Trampoline (has joint)
#begin maya_char_egg
  #define MAYA_PREFIX trampoline_
  #define EGG_PREFIX trampoline_    
  #define POLY_MODEL model
  #define ANIMS anim
  #define CHAR_NAME trampoline
#end maya_char_egg

// Rocket (Animated)
#begin maya_char_egg
  #define MAYA_PREFIX rocket_
  #define EGG_PREFIX rocket_
  #define POLY_MODEL model
  #define ANIMS launch
  #define CHAR_NAME rocket
#end maya_char_egg

// Jukebox (Animated)
#begin maya_char_egg
  #define MAYA_PREFIX jukebox_
  #define EGG_PREFIX jukebox_
  #define POLY_MODEL model
  #define ANIMS dance
  #define CHAR_NAME jukebox  
#end maya_char_egg

// Jelly bean banner
#begin maya_char_egg
  #define MAYA_PREFIX tt_m_ara_pty_
  #define EGG_PREFIX tt_m_ara_pty_
  #define MODEL bannerJellybean
  #define POLY_MODEL bannerJellybean_model
  #define ANIMS bannerJellybean
  #define CHAR_NAME JellybeanBanner
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

// Valentine banner
#begin maya_char_egg
  #define MAYA_PREFIX tt_m_ara_pty_
  #define EGG_PREFIX tt_m_ara_pty_
  #define MODEL bannerValentine
  #define POLY_MODEL bannerValentine_model
  #define ANIMS bannerValentine
  #define CHAR_NAME ValentineBanner
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

// Valentine Flying Heart
#begin maya_char_egg
  #define MAYA_PREFIX tt_m_ara_pty_
  #define EGG_PREFIX tt_m_ara_pty_
  #define MODEL heartWing
  #define POLY_MODEL heartWing_model
  #define ANIMS heartWing
  #define CHAR_NAME HeartWing
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

// Define the animation frames
#define gagGlobe_frames 1 100

// Gag Globe
#begin maya_char_egg
  #define MAYA_PREFIX tt_m_ara_pty_
  #define EGG_PREFIX tt_m_ara_pty_
  #define MODEL gagGlobe
  #define POLY_MODEL gagGlobe_model
  #define ANIMS gagGlobe
  #define CHAR_NAME GagGlobe
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS]
#end maya_char_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    tt_m_ara_pty_bannerJellybean_model.egg \
    tt_m_ara_pty_bannerJellybean.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
//    -dart structured \
    -expose bannerJoint \
    -expose balloonJointL \
    -expose balloonJointR \
    -flag banner1 \
    -flag banner2 \
    -flag balloonsLMesh \
    -flag balloonsRMesh
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    tt_m_ara_pty_bannerValentine_model.egg \
    tt_m_ara_pty_bannerValentine.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
//    -dart structured \
    -expose bannerJoint \
    -expose balloonJointL \
    -expose balloonJointR \
    -flag balloonsL \
    -flag balloonsR
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    tt_m_ara_pty_heartWing_model.egg \
    tt_m_ara_pty_heartWing.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
//    -dart structured \
    -expose heartWingJoint \
    -flag wing1 \
    -flag wing2 \
    -flag wing3 \
    -flag wing4 \
    -flag collision_heartWing
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    jukebox_model.egg jukebox_dance.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
    -no -flag jukeboxBody=jukeboxBody -flag jukeboxGlass=jukeboxGlass
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    tt_m_ara_pty_gagGlobe_model.egg \
    tt_m_ara_pty_gagGlobe.egg
  #define OPTCHAR_OPTS $[OPTCHAR_OPTS] \
//    -dart structured \
    -expose uvj_confetti \
//    -expose uvj_cake \
//    -expose uvj_pie \
//    -expose uvj_seltzerBottle \
//    -expose uvj_megaphone \
//    -expose uvj_balloons1 \
//    -expose uvj_balloons2 \    
    -flag innerGlobeMesh \
//    -flag cakeMesh \
//    -flag seltzerBottleMesh \
//    -flag pieMesh \
//    -flag megaphoneMesh \
//    -flag balloonsMesh  \
    -flag collisionMesh
#end optchar_egg


//=============================================================================
// Install
//=============================================================================

// Phase 4 source eggs include the party gate and the stickerbook assets.
#begin install_egg
  #define SOURCES \
    publicPartyGUI.egg \
    partyStickerbook.egg \
    partyPlannerGUI.egg \
    eventSignIcons.egg \
    partyDecorations.egg \
    tt_m_gui_sbk_calendar.egg tt_m_gui_sbk_calendar_box.egg tt_m_gui_sbk_calendar_popUp_bg.egg \
    schtickerbookHostingGUI.egg schtickerbookInvitationGUI.egg \
    tt_m_gui_sbk_newspaper.egg 
  #define PHASE 4
#end install_egg

// Phase 5.5 source eggs include the party invitations delivered to the mailbox and the stickerbook.
#begin install_egg
  #define SOURCES \
    partyInviteGUI.egg
  #define PHASE 5.5
#end install_egg

// Phase 13 source eggs include all the party assets.
#begin install_egg
  #define SOURCES \
    partyGrounds.egg grass.egg  \
    trampoline_model.egg trampoline_anim.egg \
    launchPad.egg rocket_model.egg rocket_launch.egg \
    partyCatchTree.egg \
    optchar/jukebox_model.egg optchar/jukebox_dance.egg \
    partyLeverBase.egg partyLeverStick.egg \
    partyClock.egg \
    eventSign.egg \
    danceFloor.egg \
    partyTugOfWar.egg \
    partyMerryGoRound.egg \
    partyReskins.egg \
    trampolineGUI.egg jukeboxGUI.egg  \
    optchar/tt_m_ara_pty_gagGlobe_model.egg  \
    optchar/tt_m_ara_pty_bannerJellybean_model.egg \
    optchar/tt_m_ara_pty_bannerValentine_model.egg \
    optchar/tt_m_ara_pty_heartWing_model.egg \
    tt_m_ara_pty_cakeTower.egg \
    //tt_m_ara_pty_heartWing.egg \
    //tt_m_ara_pty_bannerValentine.egg \
    $[matrix optchar/cogPinata_,idle up down bodyHitBack bodyHitFront headHitBack headHitFront,_anim.egg] \
    optchar/cogPinata_actor.egg \
    cogPieArena_model.egg stretchingArrow.egg cogPinataHole.egg \
    cogTrackerGUI.egg
  #define PHASE 13
#end install_egg

#begin install_egg
    #define UNPAL_SOURCES \
        optchar/tt_m_ara_pty_gagGlobe.egg  \
        optchar/tt_m_ara_pty_bannerJellybean.egg \
        optchar/tt_m_ara_pty_bannerValentine.egg \
        optchar/tt_m_ara_pty_heartWing.egg
    #define EGG2BAM_OPTS -NC
    #define PHASE 13
#end install_egg

#printvar MAYA_LOCATION
