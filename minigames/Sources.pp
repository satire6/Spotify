#define DIR_TYPE models
#define INSTALL_TO models/minigames

#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

#begin maya_egg
  #define SOURCES $[wildcard *.mb]
#end maya_egg

// All minigames are in phase 4
#begin install_egg
  #define SOURCES \
    icecreamdrop.egg apple.egg orange.egg watermelon.egg \
    pear.egg coconut.egg pineapple.egg \
    race.egg dice.egg question_mark.egg chance_card.egg \
    tug_of_war_dock.egg tug_of_war_rope.egg \
    toon_cannon.egg toon_cannon_water_tower.egg toon_cannon_gameground.egg cannon_hill.egg \
    tag_arena.egg block.egg swimming_game.egg swimming_game_ring.egg matching_room.egg \
    maze_1player.egg maze_2player.egg maze_3player.egg maze_4player.egg \
    treehouse_2players.egg treehouse_3players.egg treehouse_4players.egg \
    diving_game.egg treasure_chest.egg \
    slingshot_game_desert4.egg \
    slingshot_game_sling.egg slingshot_game_umbrellas.egg slingshot_game_cacti.egg \
    slingshot_game_tramp.egg umbrella_card.egg \
    mg_icons.egg trolley_game_turntable.egg \
    garden_sign_memory.egg memory_room.egg \
    vine_game.egg vine_game_shelf.egg\
    ice_game_icerink.egg ice_game_score_circle.egg ice_game_2d.egg  \
    ice_game_tire.egg ice_game_tirestack.egg ice_game_score_circle.egg \
    ice_game_barrel.egg ice_game_arrow.egg ice_game_arrow_2d.egg ice_game.egg \
    ice_game_crate.egg ice_game_tnt2.egg ice_game_kaboom.egg \
    cogthief_game_gagTank.egg cogthief_game.egg\
    photogame_filmroll.egg photogame_camera.egg  photogame_star.egg photo_game_viewfinder.egg photo_game_pictureframe.egg \
    jellyBean.egg toonblitz_game_block00.egg toonblitz_game_block01.egg \
    toonblitz_game_block02.egg toonblitz_game_block03.egg \
    corpIcon.egg legalIcon.egg moneyIcon.egg salesIcon.egg \
    toonblitz_game_wall.egg toonblitz_game_start.egg particleGlow.egg \
    toonblitz_game_elevator.egg toonblitz_game_stomper.egg \
    toonblitz_game.egg toonblitz_game_arrow.egg prop_waterspray.egg 
  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      bboard-pointer_$[LANGUAGE].egg
  #endif

  #define PHASE 4
#end install_egg

// DG only minigames
#begin install_egg
  #define SOURCES \
    tag_arena_DG.egg
  #define PHASE 8
#end install_egg

// BR only minigames
#begin install_egg
  #define SOURCES \
    tag_arena_BR.egg
  #define PHASE 8
#end install_egg
