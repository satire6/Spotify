#define DIR_TYPE models
#define INSTALL_TO audio/dial

#begin install_audio
  #define SOURCES \
    mickey.wav minnie.wav
  #define PHASE 3
#end install_audio

#if $[eq $[LANGUAGE],japanese]
  #begin install_audio
    #define SOURCES \
      CC_minnie_create01.mp3 CC_minnie_create02.mp3 \
      CC_minnie_create03.mp3 CC_minnie_tutorial01.mp3 \
      CC_minnie_tutorial02.mp3 CC_minnie_tutorial03.mp3 \
      CC_minnie_tutorial04.mp3 CC_minnie_tutorial05.mp3 \
      CC_mickey_create01.mp3 CC_mickey_create02.mp3 \
      CC_mickey_create03.mp3 CC_mickey_tutorial01.mp3 \
      CC_mickey_tutorial02.mp3 CC_mickey_tutorial03.mp3 \
      CC_mickey_tutorial04.mp3 CC_mickey_tutorial05.mp3 \
      CC_mickey_chatter_comments01.mp3 CC_mickey_chatter_comments02.mp3 \
      CC_mickey_chatter_comments03.mp3 CC_mickey_chatter_comments04.mp3 \
      CC_mickey_chatter_goodbyes01.mp3 CC_mickey_chatter_goodbyes02.mp3 \
      CC_mickey_chatter_goodbyes03.mp3 CC_mickey_chatter_goodbyes04.mp3 \
      CC_mickey_chatter_goodbyes05.mp3 CC_mickey_chatter_greetings01.mp3 \
      CC_mickey_chatter_greetings02.mp3 \
      CC_minnie_chatter_comments01.mp3 CC_minnie_chatter_comments02.mp3 \
      CC_minnie_chatter_comments03.mp3 CC_minnie_chatter_comments04.mp3 \
      CC_minnie_chatter_comments05.mp3 CC_minnie_chatter_comments06.mp3 \
      CC_minnie_chatter_comments07.mp3 CC_minnie_chatter_comments08.mp3 \
      CC_minnie_chatter_comments09.mp3 CC_minnie_chatter_comments10.mp3 \
      CC_minnie_chatter_comments11.mp3 CC_minnie_chatter_comments12.mp3 \
      CC_minnie_chatter_comments13.mp3 CC_minnie_chatter_comments14.mp3 \
      CC_minnie_chatter_comments15.mp3 CC_minnie_chatter_comments16.mp3 \
      CC_minnie_chatter_comments17.mp3 CC_minnie_chatter_goodbyes01.mp3 \
      CC_minnie_chatter_goodbyes02.mp3 CC_minnie_chatter_goodbyes03.mp3 \
      CC_minnie_chatter_greetings01.mp3 CC_minnie_chatter_greetings02.mp3
    #define PHASE 3
  #end install_audio
#endif

#begin install_audio
  #define SOURCES \
    AV_cat_exclaim.mp3 AV_cat_howl.mp3 AV_cat_long.mp3 AV_cat_med.mp3 \
    AV_cat_question.mp3 AV_cat_short.mp3 AV_dog_exclaim.mp3 \
    AV_dog_howl.mp3 AV_dog_long.mp3 AV_dog_med.mp3 AV_dog_question.mp3 \
    AV_dog_short.mp3 AV_duck_exclaim.mp3 AV_duck_howl.mp3 \
    AV_duck_long.mp3 AV_duck_med.mp3 AV_duck_question.mp3 \
    AV_duck_short.mp3 AV_horse_exclaim.mp3 AV_horse_howl.mp3 \
    AV_horse_long.mp3 AV_horse_med.mp3 AV_horse_question.mp3 \
    AV_horse_short.mp3 AV_mouse_exclaim.mp3 AV_mouse_howl.mp3 \
    AV_mouse_long.mp3 AV_mouse_med.mp3 AV_mouse_question.mp3 \
    AV_mouse_short.mp3 AV_rabbit_exclaim.mp3 AV_rabbit_howl.mp3 \
    AV_rabbit_long.mp3 AV_rabbit_med.mp3 AV_rabbit_question.mp3 \
    AV_rabbit_short.mp3 AV_monkey_exclaim.mp3 AV_monkey_howl.mp3 \
    AV_monkey_long.mp3 AV_monkey_med.mp3 AV_monkey_question.mp3 \
    AV_monkey_short.mp3 \
    AV_bear_question.mp3 AV_bear_exclaim.mp3 AV_bear_howl.mp3 \
    AV_bear_long.mp3 AV_bear_med.mp3 AV_bear_short.mp3 \
    AV_pig_question.mp3 AV_pig_exclaim.mp3 AV_pig_howl.mp3 \
    AV_pig_long.mp3 AV_pig_med.mp3 AV_pig_short.mp3 \
    COG_VO_grunt.mp3 COG_VO_murmur.mp3 \
    COG_VO_question.mp3 COG_VO_statement.mp3 \
    tt_s_dlg_sng_bear_a1.mp3 tt_s_dlg_sng_bear_a2.mp3 tt_s_dlg_sng_bear_a3.mp3 \
    tt_s_dlg_sng_bear_b1.mp3 tt_s_dlg_sng_bear_b2.mp3 tt_s_dlg_sng_bear_b3.mp3 \
    tt_s_dlg_sng_bear_c1.mp3 tt_s_dlg_sng_bear_c2.mp3 \
    tt_s_dlg_sng_bear_c3.mp3 tt_s_dlg_sng_bear_c4.mp3 \
    tt_s_dlg_sng_bear_d1.mp3 tt_s_dlg_sng_bear_d2.mp3 tt_s_dlg_sng_bear_d3.mp3 \
    tt_s_dlg_sng_bear_e1.mp3 tt_s_dlg_sng_bear_e2.mp3 tt_s_dlg_sng_bear_e2.mp3 \
    tt_s_dlg_sng_bear_f1.mp3 tt_s_dlg_sng_bear_f2.mp3 tt_s_dlg_sng_bear_f3.mp3 \
    tt_s_dlg_sng_bear_g1.mp3 tt_s_dlg_sng_bear_g2.mp3 tt_s_dlg_sng_bear_g3.mp3 \
    \
    tt_s_dlg_sng_duck_a1.mp3 tt_s_dlg_sng_duck_a2.mp3 tt_s_dlg_sng_duck_a3.mp3 \
    tt_s_dlg_sng_duck_b1.mp3 tt_s_dlg_sng_duck_b2.mp3 tt_s_dlg_sng_duck_b3.mp3 \
    tt_s_dlg_sng_duck_c1.mp3 tt_s_dlg_sng_duck_c2.mp3 \
    tt_s_dlg_sng_duck_c3.mp3 tt_s_dlg_sng_duck_c4.mp3 \
    tt_s_dlg_sng_duck_d1.mp3 tt_s_dlg_sng_duck_d2.mp3 tt_s_dlg_sng_duck_d3.mp3 \
    tt_s_dlg_sng_duck_e1.mp3 tt_s_dlg_sng_duck_e2.mp3 tt_s_dlg_sng_duck_e3.mp3 \
    tt_s_dlg_sng_duck_f1.mp3 tt_s_dlg_sng_duck_f2.mp3 tt_s_dlg_sng_duck_f3.mp3 \
    tt_s_dlg_sng_duck_g1.mp3 tt_s_dlg_sng_duck_g2.mp3 tt_s_dlg_sng_duck_g3.mp3 \
    \
    tt_s_dlg_sng_dog_a1.mp3 tt_s_dlg_sng_dog_a2.mp3 tt_s_dlg_sng_dog_a3.mp3 \
    tt_s_dlg_sng_dog_b1.mp3 tt_s_dlg_sng_dog_b2.mp3 tt_s_dlg_sng_dog_b3.mp3 \
    tt_s_dlg_sng_dog_c1.mp3 tt_s_dlg_sng_dog_c2.mp3 \
    tt_s_dlg_sng_dog_c3.mp3 tt_s_dlg_sng_dog_c4.mp3 \
    tt_s_dlg_sng_dog_d1.mp3 tt_s_dlg_sng_dog_d2.mp3 tt_s_dlg_sng_dog_d3.mp3 \
    tt_s_dlg_sng_dog_e1.mp3 tt_s_dlg_sng_dog_e2.mp3 tt_s_dlg_sng_dog_e3.mp3 \
    tt_s_dlg_sng_dog_f1.mp3 tt_s_dlg_sng_dog_f2.mp3 tt_s_dlg_sng_dog_f3.mp3 \
    tt_s_dlg_sng_dog_g1.mp3 tt_s_dlg_sng_dog_g2.mp3 tt_s_dlg_sng_dog_g3.mp3 \
    \
    tt_s_dlg_sng_cat_a1.mp3 tt_s_dlg_sng_cat_a2.mp3 tt_s_dlg_sng_cat_a3.mp3 \
    tt_s_dlg_sng_cat_b1.mp3 tt_s_dlg_sng_cat_b2.mp3 tt_s_dlg_sng_cat_b3.mp3 \
    tt_s_dlg_sng_cat_c1.mp3 tt_s_dlg_sng_cat_c2.mp3 \
    tt_s_dlg_sng_cat_c3.mp3 tt_s_dlg_sng_cat_c4.mp3 \
    tt_s_dlg_sng_cat_d1.mp3 tt_s_dlg_sng_cat_d2.mp3 tt_s_dlg_sng_cat_d3.mp3 \
    tt_s_dlg_sng_cat_e1.mp3 tt_s_dlg_sng_cat_e2.mp3 tt_s_dlg_sng_cat_e3.mp3 \
    tt_s_dlg_sng_cat_f1.mp3 tt_s_dlg_sng_cat_f2.mp3 tt_s_dlg_sng_cat_f3.mp3 \
    tt_s_dlg_sng_cat_g1.mp3 tt_s_dlg_sng_cat_g2.mp3 tt_s_dlg_sng_cat_g3.mp3 \
    \
    tt_s_dlg_sng_rabbit_a1.mp3 tt_s_dlg_sng_rabbit_a2.mp3 tt_s_dlg_sng_rabbit_a3.mp3 \
    tt_s_dlg_sng_rabbit_b1.mp3 tt_s_dlg_sng_rabbit_b2.mp3 tt_s_dlg_sng_rabbit_b3.mp3 \
    tt_s_dlg_sng_rabbit_c1.mp3 tt_s_dlg_sng_rabbit_c2.mp3 \
    tt_s_dlg_sng_rabbit_c3.mp3 tt_s_dlg_sng_rabbit_c4.mp3 \
    tt_s_dlg_sng_rabbit_d1.mp3 tt_s_dlg_sng_rabbit_d2.mp3 tt_s_dlg_sng_rabbit_d3.mp3 \
    tt_s_dlg_sng_rabbit_e1.mp3 tt_s_dlg_sng_rabbit_e2.mp3 tt_s_dlg_sng_rabbit_e3.mp3 \
    tt_s_dlg_sng_rabbit_f1.mp3 tt_s_dlg_sng_rabbit_f2.mp3 tt_s_dlg_sng_rabbit_f3.mp3 \
    tt_s_dlg_sng_rabbit_g1.mp3 tt_s_dlg_sng_rabbit_g2.mp3 tt_s_dlg_sng_rabbit_g3.mp3 \
    \
    tt_s_dlg_sng_mouse_a1.mp3 tt_s_dlg_sng_mouse_a2.mp3 tt_s_dlg_sng_mouse_a3.mp3 \
    tt_s_dlg_sng_mouse_b1.mp3 tt_s_dlg_sng_mouse_b2.mp3 tt_s_dlg_sng_mouse_b3.mp3 \
    tt_s_dlg_sng_mouse_c1.mp3 tt_s_dlg_sng_mouse_c2.mp3 \
    tt_s_dlg_sng_mouse_c3.mp3 tt_s_dlg_sng_mouse_c4.mp3 \
    tt_s_dlg_sng_mouse_d1.mp3 tt_s_dlg_sng_mouse_d2.mp3 tt_s_dlg_sng_mouse_d3.mp3 \
    tt_s_dlg_sng_mouse_e1.mp3 tt_s_dlg_sng_mouse_e2.mp3 tt_s_dlg_sng_mouse_e3.mp3 \
    tt_s_dlg_sng_mouse_f1.mp3 tt_s_dlg_sng_mouse_f2.mp3 tt_s_dlg_sng_mouse_f3.mp3 \
    tt_s_dlg_sng_mouse_g1.mp3 tt_s_dlg_sng_mouse_g2.mp3 tt_s_dlg_sng_mouse_g3.mp3 \
    \
    tt_s_dlg_sng_pig_a1.mp3 tt_s_dlg_sng_pig_a2.mp3 tt_s_dlg_sng_pig_a3.mp3 \
    tt_s_dlg_sng_pig_b1.mp3 tt_s_dlg_sng_pig_b2.mp3 tt_s_dlg_sng_pig_b3.mp3 \
    tt_s_dlg_sng_pig_c1.mp3 tt_s_dlg_sng_pig_c2.mp3 \
    tt_s_dlg_sng_pig_c3.mp3 tt_s_dlg_sng_pig_c4.mp3 \
    tt_s_dlg_sng_pig_d1.mp3 tt_s_dlg_sng_pig_d2.mp3 tt_s_dlg_sng_pig_d3.mp3 \
    tt_s_dlg_sng_pig_e1.mp3 tt_s_dlg_sng_pig_e2.mp3 tt_s_dlg_sng_pig_e3.mp3 \
    tt_s_dlg_sng_pig_f1.mp3 tt_s_dlg_sng_pig_f2.mp3 tt_s_dlg_sng_pig_f3.mp3 \
    tt_s_dlg_sng_pig_g1.mp3 tt_s_dlg_sng_pig_g2.mp3 tt_s_dlg_sng_pig_g3.mp3 \
    \
    tt_s_dlg_sng_monkey_a1.mp3 tt_s_dlg_sng_monkey_a2.mp3 tt_s_dlg_sng_monkey_a3.mp3 \
    tt_s_dlg_sng_monkey_b1.mp3 tt_s_dlg_sng_monkey_b2.mp3 tt_s_dlg_sng_monkey_b3.mp3 \
    tt_s_dlg_sng_monkey_c1.mp3 tt_s_dlg_sng_monkey_c2.mp3 \
    tt_s_dlg_sng_monkey_c3.mp3 tt_s_dlg_sng_monkey_c4.mp3 \
    tt_s_dlg_sng_monkey_d1.mp3 tt_s_dlg_sng_monkey_d2.mp3 tt_s_dlg_sng_monkey_d3.mp3 \
    tt_s_dlg_sng_monkey_e1.mp3 tt_s_dlg_sng_monkey_e2.mp3 tt_s_dlg_sng_monkey_e3.mp3 \
    tt_s_dlg_sng_monkey_f1.mp3 tt_s_dlg_sng_monkey_f2.mp3 tt_s_dlg_sng_monkey_f3.mp3 \
    tt_s_dlg_sng_monkey_g1.mp3 tt_s_dlg_sng_monkey_g2.mp3 tt_s_dlg_sng_monkey_g3.mp3 \
    \
    tt_s_dlg_sng_horse_a1.mp3 tt_s_dlg_sng_horse_a2.mp3 tt_s_dlg_sng_horse_a3.mp3 \
    tt_s_dlg_sng_horse_b1.mp3 tt_s_dlg_sng_horse_b2.mp3 tt_s_dlg_sng_horse_b3.mp3 \
    tt_s_dlg_sng_horse_c1.mp3 tt_s_dlg_sng_horse_c2.mp3 \
    tt_s_dlg_sng_horse_c3.mp3 tt_s_dlg_sng_horse_c4.mp3 \
    tt_s_dlg_sng_horse_d1.mp3 tt_s_dlg_sng_horse_d2.mp3 tt_s_dlg_sng_horse_d3.mp3 \
    tt_s_dlg_sng_horse_e1.mp3 tt_s_dlg_sng_horse_e2.mp3 tt_s_dlg_sng_horse_e3.mp3 \
    tt_s_dlg_sng_horse_f1.mp3 tt_s_dlg_sng_horse_f2.mp3 tt_s_dlg_sng_horse_f3.mp3 \
    tt_s_dlg_sng_horse_g1.mp3 tt_s_dlg_sng_horse_g2.mp3 tt_s_dlg_sng_horse_g3.mp3
  #define PHASE 3.5
#end install_audio

#if $[eq $[LANGUAGE],japanese]
  #begin install_audio
    #define SOURCES \
      CC_flippy_tutorial_blocker01.mp3 CC_flippy_tutorial_blocker02.mp3 \
      CC_flippy_tutorial_blocker03.mp3 CC_flippy_tutorial_blocker04.mp3 \
      CC_flippy_tutorial_blocker05.mp3 CC_flippy_tutorial_blocker06.mp3 \
      CC_flippy_tutorial_blocker07.mp3 CC_flippy_tutorial_blocker08.mp3 \
      CC_flippy_tutorial_blocker09.mp3 CC_harry_tutorial_questscript01.mp3 \
      CC_harry_tutorial_questscript02.mp3 CC_harry_tutorial_questscript03.mp3 \
      CC_harry_tutorial_questscript04.mp3 CC_harry_tutorial_questscript05.mp3 \
      CC_harry_tutorial_questscript06.mp3 CC_harry_tutorial_questscript07.mp3 \
      CC_harry_tutorial_questscript08.mp3 CC_harry_tutorial_questscript09.mp3 \
      CC_harry_tutorial_questscript10.mp3 CC_harry_tutorial_questscript11.mp3 \
      CC_tom_movie_tutorial_reward01.mp3 CC_tom_movie_tutorial_reward02.mp3 \
      CC_tom_movie_tutorial_reward03.mp3 \
      CC_tom_tutorial_mickey01.mp3 CC_tom_tutorial_mickey02.mp3 \
      CC_tom_tutorial_minnie01.mp3 CC_tom_tutorial_questscript01.mp3 \
      CC_tom_tutorial_questscript02.mp3 CC_tom_tutorial_questscript03.mp3 \
      CC_tom_tutorial_questscript04.mp3 CC_tom_tutorial_questscript05.mp3 \
      CC_tom_tutorial_questscript06.mp3 CC_tom_tutorial_questscript07.mp3 \
      CC_tom_tutorial_questscript08.mp3 CC_tom_tutorial_questscript09.mp3 \
      CC_tom_tutorial_questscript10.mp3 CC_tom_tutorial_questscript11.mp3 \
      CC_tom_tutorial_questscript12.mp3 CC_tom_tutorial_questscript13.mp3 \
      CC_tom_tutorial_questscript14.mp3 CC_tom_tutorial_questscript15.mp3 \
      CC_tom_tutorial_questscript16.mp3
    #define PHASE 3.5
  #end install_audio
#endif

#begin install_audio
  #define SOURCES \
    daisy.wav
  #define PHASE 4
#end install_audio

#begin install_audio
  #define SOURCES \
    donald.wav goofy.wav chip.wav dale.wav ChipDale.mp3
  #define PHASE 6
#end install_audio

#if $[eq $[LANGUAGE],japanese]
  #begin install_audio
    #define SOURCES \
      CC_donald_chatter_comments01.mp3 CC_donald_chatter_comments10.mp3 \
      CC_donald_chatter_comments02.mp3 CC_donald_chatter_comments11.mp3 \
      CC_donald_chatter_comments03.mp3 CC_donald_chatter_goodbyes01.mp3 \
      CC_donald_chatter_comments04.mp3 CC_donald_chatter_goodbyes02.mp3 \
      CC_donald_chatter_comments05.mp3 CC_donald_chatter_goodbyes03.mp3 \
      CC_donald_chatter_comments06.mp3 CC_donald_chatter_goodbyes04.mp3 \
      CC_donald_chatter_comments07.mp3 CC_donald_chatter_greetings01.mp3 \
      CC_donald_chatter_comments08.mp3 CC_donald_chatter_greetings02.mp3 \
      CC_donald_chatter_comments09.mp3 \
      CC_goofy_chatter_comments01.mp3 CC_goofy_chatter_comments11.mp3 \
      CC_goofy_chatter_comments02.mp3 CC_goofy_chatter_comments12.mp3 \
      CC_goofy_chatter_comments03.mp3 CC_goofy_chatter_goodbyes01.mp3 \
      CC_goofy_chatter_comments04.mp3 CC_goofy_chatter_goodbyes02.mp3 \
      CC_goofy_chatter_comments05.mp3 CC_goofy_chatter_goodbyes03.mp3 \
      CC_goofy_chatter_comments06.mp3 CC_goofy_chatter_goodbyes04.mp3 \
      CC_goofy_chatter_comments07.mp3 CC_goofy_chatter_greetings01.mp3 \
      CC_goofy_chatter_comments08.mp3 CC_goofy_chatter_greetings02.mp3 \
      CC_goofy_chatter_comments09.mp3 CC_goofy_chatter_greetings03.mp3 \
      CC_goofy_chatter_comments10.mp3
    #define PHASE 6
  #end install_audio
#endif
