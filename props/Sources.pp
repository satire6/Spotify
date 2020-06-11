#define DIR_TYPE models
#define INSTALL_TO models/props

#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

#begin maya_egg
  #define SOURCES $[wildcard *.mb]
#end maya_egg

// Props everybody uses
#begin install_egg
  #define SOURCES \
    chatbox.egg chatbox_input.egg chatbox_noarrow.egg \
    chatbox_thought_cutout.egg drop_shadow.egg square_drop_shadow.egg \
    arrow.egg scroll-arrow.egg page-arrow.egg panel.egg \
    eyesClosed.egg eyesFemale.egg tutorialToonTextures.egg
  #define PHASE 3
#end install_egg

#begin install_egg
    #define UNPAL_SOURCES \
        xyzAxis.egg
    #define PHASE 3
#end install_egg

// Tutorial
#begin install_egg
  #define SOURCES \
    trees.egg winter_trees.egg TT_sky.egg mickeySZ.egg cellar_door.egg \
    tt_m_ara_TT_trees_halloween.egg tt_m_ara_TT_streetlight_halloween.egg \
    tt_m_ara_TT_streetlight_winter.egg \
    streetlight_TT.egg big_planter.egg \
    tunnel_sign_orange.egg \
    tt_m_ara_ddl_streetlight_halloween.egg \
    tt_m_ara_ddl_tree_halloween.egg \
    // BR sky has to be put in here because it is used by many hoods during halloween
    BR_sky.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      mailbox_TT_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      mailbox_TT_english.egg
  #endif
  #define PHASE 3.5
#end install_egg

// Minigame props
#begin install_egg
  #define SOURCES \
    coffin.egg tt_m_ara_ext_heart.egg
  #define PHASE 4
#end install_egg

// Toontown Central Safe Zone or general
#begin install_egg
  #define SOURCES \
    sign_general1.egg signs_TTC.egg \
    minnieSZ.egg donaldSZ.egg donald_DL_SZ.egg \
    plutoSZ.egg goofySZ.egg daisySZ.egg \
    construction_sign.egg tunnel_sign_cogHQ.egg icecream.egg \
    airplane.egg butterfly.egg sun.egg \
    tt_m_prp_ext_flyingWitch.egg \
    toontown_central_fountain.egg piers_tt.egg fishing_bob.egg \
    mickey_on_horse.egg goofy_statue.egg ripples.egg wake.egg \
    // Holiday decorations
    winter_tree_Christmas.egg tt_m_int_snowmanHead_short.egg \
    tt_m_int_snowmanHead_tall.egg \
    tt_m_ara_TT_test_sillyOMeter.egg \
    tt_m_ara_TT_sillyOMeter.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      neighborhood_sign_sellBotHQ_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      neighborhood_sign_sellBotHQ_english.egg
  #endif
  #define PHASE 4
#end install_egg

// Toontown Central Street Only (phase 5)
#begin install_egg
  #define SOURCES \
    awnings_round.egg awnings_square.egg landmark_signs.egg \
    TT_hydrant.egg trashcan_TT.egg \
    stairs.egg crate.egg marquee.egg diner_entrance.egg \
    roman_entrance.egg billboard_ads.egg wall_lanterns.egg \
    roof_access.egg chimneys.egg safe.egg banner.egg store_display_items.egg
  #define PHASE 5
#end install_egg

// neighborhood signs
// who knows where these will end up
#begin install_egg
  #define SOURCES \
    tunnel_sign_blue.egg \
    tunnel_sign_green.egg \
    tunnel_sign_magenta.egg \
    tunnel_sign_red.egg \
    sign_sellBotHeadHQ.egg \
    jellybean4.egg test_clouds.egg 

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      neighborhood_sign_DD_$[LANGUAGE].egg \
      neighborhood_sign_MM_$[LANGUAGE].egg \
      neighborhood_sign_BR_$[LANGUAGE].egg \
      neighborhood_sign_DG_$[LANGUAGE].egg \
      neighborhood_sign_DL_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      neighborhood_sign_DD_english.egg \
      neighborhood_sign_MM_english.egg \
      neighborhood_sign_BR_english.egg \
      neighborhood_sign_DG_english.egg \
      neighborhood_sign_DL_english.egg
  #endif
  #define PHASE 4
#end install_egg

#begin install_egg
  #if $[LANGUAGE]
    #define SOURCES \
      neighborhood_sign_TT_$[LANGUAGE].egg
  #else
    #define SOURCES \
      neighborhood_sign_TT_english.egg
  #endif
  #define PHASE 3.5
#end install_egg

#begin install_egg
  #define SOURCES \
    moon.egg popsicle_treasure.egg
  #define PHASE 5.5
#end install_egg


// Now we need the second tier neighborhood props

// DD
#begin install_egg
  #define SOURCES \
    dockpilings.egg ship_masts.egg \
    tt_m_ara_DD_palmtree_topflat_halloween.egg tt_m_ara_DD_streetlight_halloween.egg \
    tt_m_ara_DD_streetlight_winter.egg \
    streetlight_DD.egg palm_tree_topflat.egg winter_palm_tree_topflat.egg \
    signs_DD.egg DD_flats.egg anchor.egg small_round_barrel.egg \
    DD_lighthouse.egg DD_street_water.egg starfish_treasure.egg \

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      trashcan_DD_$[LANGUAGE].egg mailbox_DD_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      trashcan_DD_english.egg mailbox_DD_english.egg
  #endif
  #define PHASE 6
#end install_egg

// MM
#begin install_egg
  #define SOURCES \
    minnie_planter.egg MM_sky.egg streetlight_MM.egg tt_m_ara_MM_streetlight_winter.egg \
    signs_MM.egg MM_flats.egg mailbox_MM.egg piano.egg trees_MM.egg winter_trees_MM.egg \
    tt_m_ara_MM_streetlight_halloween.egg tt_m_ara_MM_tree_halloween.egg \
    MM_awnings_square.egg MM_awnings_round.egg music_treasure.egg \

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      trashcan_MM_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      trashcan_MM_english.egg
  #endif
  #define PHASE 6
#end install_egg

// OZ

#begin install_egg
  #define SOURCES \
    acorn_treasure.egg 
  #define PHASE 6
#end install_egg

// BR
#begin install_egg
  #define SOURCES \
    snow_trees.egg pine_trees.egg winter_pine_trees.egg icecube.egg streetlight_BR.egg \
    tt_m_ara_BR_pinetrees_halloween.egg \
    snowman.egg BR_trashcan.egg BR_flats.egg roman_entrance_BR.egg \
    snow_pile_full.egg snow_pile_half.egg snow_pile_quarter.egg \
    BR_hydrant.egg potbelly_stove.egg BR_mailbox.egg signs_BR.egg \
    snowflake_treasure.egg snowflake_particle.egg 
  #define PHASE 8
#end install_egg

// DG
#begin install_egg
  #define SOURCES \
    tt_m_ara_DG_streetlight_halloween.egg \
    tt_m_ara_DG_streetlight_winter.egg \
    tt_m_ara_DG_tree_halloween_ghost.egg \
    daisy_park_table.egg stairs_DG.egg streetlight_DG.egg \
    daisys_flowerbox_yellow.egg daisys_flowerbox_pink.egg \
    window_flowerbox_wood.egg window_flowerbox_woven.egg \
    daisys_flower_bed.egg DG_flats.egg trees_DG.egg winter_trees_DG.egg signs_DG.egg flower_treasure.egg \
    daisys_fountain.egg 
  #define PHASE 8
#end install_egg

// DL
#begin install_egg
  #define SOURCES \
    DL_sky.egg streetlight_DL.egg mailbox_DL.egg \
    trees_DL.egg winter_trees_DL.egg DL_hydrant.egg \
    tt_m_ara_DL_streetlight_halloween.egg tt_m_ara_DL_tree_halloween.egg \
    tt_m_ara_DL_streetlight_winter.egg \
    DL_weathervane.egg DL_flats.egg signs_DL.egg zzz_treasure.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      neighborhood_sign_cashBotHQ_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      neighborhood_sign_cashBotHQ_english.egg
  #endif

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      neighborhood_sign_lawBotHQ_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      neighborhood_sign_lawBotHQ_english.egg
  #endif
  #define PHASE 8
#end install_egg
