#define DIR_TYPE models
#define INSTALL_TO audio/sfx

// Make-a-toon, General GUI
#begin install_audio
  #define SOURCES \
    GUI_create_toon_art.mp3 \
    GUI_create_toon_back.mp3 GUI_create_toon_bodyshop.mp3 \
    GUI_create_toon_fwd.mp3 GUI_create_toon_store.mp3 \
    GUI_rollover.mp3 GUI_balloon_popup.mp3 \
    tt_s_ara_mat_crash_boing.mp3 tt_s_ara_mat_crash_glassBoing.mp3 \
    tt_s_ara_mat_crash_wood.mp3 tt_s_ara_mat_crash_woodBoing.mp3 \
    tt_s_ara_mat_crash_woodGlass.mp3
#define PHASE 3
#end install_audio

// Tutorial
#begin install_audio
  #define SOURCES \
    AV_collision.mp3 AV_footstep_runloop.wav \
    AV_footstep_walkloop.wav GUI_quicktalker.mp3 \
    GUI_stickerbook_open.mp3 GUI_stickerbook_turn.mp3 \
    GUI_stickerbook_delete.mp3 GUI_whisper_3.mp3 \
    Door_Close_1.mp3 Door_Open_1.mp3 tick_counter.mp3 \
    AV_teleport.mp3 \
    // Tutorial battle
    AV_side_step.mp3 AV_jump_to_side.mp3 ENC_Win.mp3 \
    ENC_cogfall_apart.mp3 Cog_Death.mp3 \
    // Throw
    AA_tart_only.mp3 AA_pie_throw_only.mp3 \
    // Squirt
    AA_squirt_flowersquirt.mp3 \
    // Suit Attacks (only for Flunky)
    SA_shred.mp3 SA_hangup.mp3 \
    // Phone for catalog delivery
    telephone_ring.mp3 \
    // Emotes triggered in normal speed chat
    avatar_emotion_angry.mp3 avatar_emotion_shrug.mp3
  #define PHASE 3.5
#end install_audio

// Avatar sounds not in tutorial
#begin install_audio
  #define SOURCES \
    AV_foostep_walkloop_water.mp3 AV_footstep_runloop_water.mp3 
  #define PHASE 4
#end install_audio

// General Safezone
#begin install_audio
  #define SOURCES \
    SZ_trolley_away.mp3 SZ_trolley_bell.mp3 SZ_DD_treasure.mp3 \
    TT_splash1.mp3 TT_splash2.mp3 \
    firework_distance_01.mp3 firework_distance_02.mp3 firework_distance_03.mp3 \
    firework_explosion_01.mp3 firework_explosion_02.mp3 firework_explosion_03.mp3 \
    firework_whistle_01.mp3 firework_whistle_02.mp3 
  #define PHASE 4
#end install_audio

// Avatar emotions
#begin install_audio
  #define SOURCES \
    avatar_emotion_bored.mp3 avatar_emotion_laugh.mp3 \
    avatar_emotion_surprise.mp3 avatar_emotion_taunt.mp3 avatar_emotion_very_sad.mp3 \
    avatar_emotion_applause.mp3 avatar_emotion_confused.mp3 avatar_emotion_very_sad_1.mp3 \
    furious_03.mp3 delighted_06.mp3
  #define PHASE 4
#end install_audio

// Toontown Central Safezone
#begin install_audio
  #define SOURCES \
    SZ_TC_bird1.mp3 SZ_TC_bird2.mp3 SZ_TC_bird3.mp3
  #define PHASE 4
#end install_audio

// fish sounds
#begin install_audio
  #define SOURCES \
    Frozen_Fish.mp3 Clownfish.mp3 Bear_Acuda.mp3 Pool_Shark.mp3 Piano_Tuna.mp3 Starfish.mp3 \
    DevilRay.mp3 Moon_Fish.mp3 Holy_Mackerel.mp3 PBJ_Fish.mp3 Nurse_Shark.mp3 Dog_Fish.mp3 \
    Seahorse.mp3 King_Crab.mp3 BalloonFish.mp3 CatFish.mp3 AmoreEel.mp3 CutThroatTrout.mp3
  #define PHASE 4
#end install_audio

// Minigame
#begin install_audio
  #define SOURCES \
    MG_lose.mp3 MG_win.mp3 MG_pos_buzzer.wav MG_neg_buzzer.wav \
    MG_Tag_A.mp3 MG_Tag_C.mp3 \
    MG_maze_pickup.mp3 \
    MG_cannon_adjust.mp3 MG_cannon_fire_alt.mp3 MG_cannon_hit_dirt.mp3 \
    MG_cannon_hit_tower.mp3 MG_cannon_splash.mp3 MG_cannon_whizz.mp3 \
    ring_get.mp3 ring_miss.mp3 ring_perfect.mp3  \
    m_match_drums.mp3 m_match_guitar.mp3 \
    m_match_piano.mp3 m_match_trumpet.mp3 \
    AV_ambient_water.mp3 AV_swim_single_stroke.mp3 \
    AA_sound_whistle.mp3 AA_drop_anvil_miss.mp3 \
    MG_sfx_vine_game_jump.mp3 MG_sfx_vine_game_catch.mp3 \
    MG_sfx_vine_game_fall.mp3 MG_sfx_vine_game_bananas.mp3 \
    MG_sfx_vine_game_spider_hit.mp3 MG_sfx_vine_game_bat_hit.mp3 \
    MG_sfx_vine_game_bat_hit_midair.mp3 MG_sfx_vine_game_finish.mp3 \
    MG_sfx_travel_game_bell_for_trolley.mp3 MG_sfx_vine_game_bat_shriek_3.mp3 \
    MG_sfx_travel_game_win_vote.mp3 MG_sfx_travel_game_turntble_rotate_2.mp3 \
    MG_sfx_travel_game_square_no_vote_1.mp3 MG_sfx_travel_game_red_arrow.mp3 \
    MG_sfx_travel_game_no_bonus.mp3 MG_sfx_travel_game_lose_vote.mp3 \
    MG_sfx_travel_game_bonus.mp3 MG_sfx_travel_game_blue_arrow.mp3 \
    MG_sfx_travel_game_no_bonus_2.mp3 \
    target_trampoline_2.mp3 target_chute.mp3 \
    target_cloud.mp3 target_impact_grunt1.mp3 \
    target_launch.mp3 target_stretching_aim_loop.mp3 \
    target_wind_fly_loop.wav target_wind_float_clothloop.wav \
    target_wind_float_loop.wav target_impact_only.mp3 \
    target_happydance.mp3 target_Lose.mp3 \
    diving_swim_loop.wav diving_treasure_pick_up.mp3 diving_game_hit.mp3 \
    diving_treasure_drop_off.mp3 \
    MG_sfx_vine_game_bat_flying_lp.mp3 \
    MG_sfx_vine_game_bat_flying_lp.wav \
    MG_pairing_card_flip_face_up.mp3 MG_pairing_card_flip_face_down.mp3 \
    MG_pairing_match.mp3 MG_pairing_match_bonus_both.mp3\
    MG_pairing_all_matched.mp3 MG_pairing_jumping_signal.mp3 \
    MG_pairing_bonus_moves.mp3 \
    Photo_zoom.mp3 Photo_instamatic.mp3 Photo_shutter.mp3 \
    Golf_Hit_Barrier_2.mp3 Golf_Hit_Barrier_1.mp3 \
    MG_sfx_ice_force_rotate.wav MG_sfx_ice_force_increase_3sec.mp3 \
    MG_sfx_ice_force_decrease_3sec.mp3 MG_sfx_ice_scoring_1.mp3 \
    AA_squirt_seltzer_miss.mp3 Seltzer_squirt_2dgame_hit.mp3 \
    AA_wholepie_only.mp3\
    CHQ_FACT_stomper_small.mp3 threeSparkles.mp3 TB_propeller.wav \
    sparkly.mp3 
  #define PHASE 4
#end install_audio

// Battle and Suits
#begin install_audio
  #define SOURCES \
    // Generic
    ENC_cogbfslg.mp3 ENC_cogafssm.mp3 ENC_cogafslg.mp3 \
    ENC_cogjump_to_side.mp3 ENC_cogcfssm.mp3 \
    ENC_cogcfslg.mp3 ENC_cogbfssm.mp3 \
    ENC_cogside_step.mp3 \
    ENC_propeller_in.mp3 ENC_propeller_out.mp3 \
    GUI_battleselect.mp3 GUI_battlerollover.mp3 \
    ENC_Lose.mp3 ENC_Lose_head_down.mp3 ENC_Lose_shrinking.mp3 \
    //
    // Building takeover
    cogbldg_drop.mp3 cogbldg_land.mp3 cogbldg_settle.mp3 cogbldg_weaken.mp3 \
    toonbldg_grow.mp3 toonbldg_settle.mp3 \
    //
    // Trap and Lure
    TL_banana.mp3 TL_dynamite.mp3 TL_fishing_pole.mp3 TL_hypnotize.mp3 \
    TL_large_magnet.mp3 TL_marbles.mp3 TL_quicksand.mp3 \ 
    TL_rake_pickup_only.mp3 TL_rake_throw_only.mp3 TL_small_magnet.mp3 \
    TL_step_on_rake.mp3 TL_trap_door.mp3 \
    TL_presentation.mp3 TL_train_track_appear.mp3 TL_train.mp3 TL_train_cog.mp3\
    //
    // Sound (some of the sound files used for when instrument first appears)
    AA_sound_aoogah.mp3 AA_sound_bikehorn.mp3 AA_sound_bugle.mp3 \
    AA_sound_elephant.mp3 SZ_DD_foghorn.mp3 MG_tag_1.mp3 \
    LB_receive_evidence.mp3 mailbox_full_wobble.mp3 AA_sound_Opera_Singer.mp3 AA_sound_Opera_Singer_Cog_Glass.mp3\
    //
    // Heal
    AA_heal_happydance.mp3 AA_heal_juggle.mp3 AA_heal_pixiedust.mp3 \
    AA_heal_smooch.mp3 AA_heal_telljoke.mp3 AA_heal_tickle.mp3 \
    AA_heal_smooch_appear.mp3 AA_smooch_impact.mp3 AA_heal_High_Dive.mp3\
    //
    // Throw
    // AA_throw_bdaycake.mp3 AA_throw_bdaycake_miss.mp3 \
    // AA_throw_creampie.mp3 AA_throw_creampie_miss.mp3 \
    // AA_throw_fruitpie.mp3 AA_throw_fruitpie_miss.mp3 \
    // AA_throw_wcreampie.mp3 AA_throw_wcreampie_miss.mp3 \
    // AA_throw_wfruitpie.mp3 AA_throw_wfruitpie_miss.mp3 \
    AA_slice_only.mp3 \ 
    // RAU AA_wholepie_only.mp3 moved to phase 4 for cog thief minigame
    AA_throw_wedding_cake.mp3 AA_throw_wedding_cake_cog.mp3 \
    AA_throw_wedding_cake_miss.mp3\
    //
    // Squirt
    AA_squirt_flowersquirt_miss.mp3 \ 
    AA_squirt_glasswater.mp3 AA_squirt_glasswater_miss.mp3 \
    AA_squirt_neonwatergun.mp3 AA_squirt_neonwatergun_miss.mp3 \
    AA_squirt_seltzer.mp3 \
    firehose_spray.mp3 firehydrant_popup.mp3 \
    AA_throw_stormcloud.mp3 AA_throw_stormcloud_miss.mp3 AA_squirt_Geyser.mp3\
    //
    // Drop
    AA_drop_anvil.mp3 \
    AA_drop_bigweight.mp3 AA_drop_bigweight_miss.mp3 \
    AA_drop_flowerpot.mp3 AA_drop_flowerpot_miss.mp3 \
    AA_drop_piano.mp3 AA_drop_piano_miss.mp3 \
    AA_drop_safe.mp3 AA_drop_safe_miss.mp3 \
    AA_drop_sandbag.mp3 AA_drop_sandbag_miss.mp3 \
    AA_drop_trigger_box.mp3 incoming_whistle.mp3 incoming_whistleALT.mp3 \
    AA_drop_boat.mp3 AA_drop_boat_cog.mp3 AA_drop_boat_miss.mp3 \
    //
    // Toon reactions
    Toon_bodyfall_synergy.mp3 Toon_getting_up_guilt_trip.mp3 \
    //
    // Suit Attacks
    SA_brainstorm.mp3 SA_buzz_word.mp3 SA_filibuster.mp3 \
    SA_guilt_trip.mp3 SA_hot_air.mp3 SA_jargon.mp3 SA_liquidate.mp3 \
    SA_mumbo_jumbo.mp3 SA_rolodex.mp3 SA_schmooze.mp3 SA_synergy.mp3 \
    SA_withdrawl.mp3 lightning_1.mp3 lightning_2.mp3 lightning_3.mp3 \
    SA_evil_eye.mp3 SA_hardball.mp3 SA_hardball_impact_only.mp3 \
    SA_head_grow_back_only.mp3 SA_head_shrink_only.mp3 \
    SA_paradigm_shift.mp3 SA_pink_slip.mp3 \
    SA_powertie_impact.mp3 SA_powertie_throw.mp3 \
    SA_audit.mp3 SA_demotion.mp3 SA_fountain_pen.mp3 \
    SA_glower_power.mp3 SA_pick_pocket.mp3 \
    SA_razzle_dazzle.mp3 SA_red_tape.mp3 SA_rubber_stamp.mp3 \
    SA_rubout.mp3 SA_tremor.mp3 \
    SA_canned_impact_only.mp3 SA_canned_tossup_only.mp3 \
    SA_finger_wag.mp3 SA_tee_off.mp3 \
    SA_watercooler_appear_only.mp3 SA_watercooler_spray_only.mp3 \
    SA_writeoff_ding_only.mp3 SA_writeoff_pen_only.mp3 \
    General_device_appear.mp3 General_throw_miss.mp3
  #define PHASE 5
#end install_audio

// Fanfare
#begin install_audio
  #define SOURCES \
    SZ_MM_fanfare.mp3 SZ_MM_drumroll.mp3
  #define PHASE 5
#end install_audio
 
// Toontown Central Streets and beyond (phase 5)
#begin install_audio
  #define SOURCES \
    GUI_knock_1.mp3 GUI_knock_2.mp3 GUI_knock_3.mp3 GUI_knock_4.mp3 \
    elevator_door_close.mp3 elevator_door_open.mp3 Skel_COG_VO_grunt.mp3 \
    Skel_COG_VO_murmur.mp3 Skel_COG_VO_statement.mp3 Skel_COG_VO_question.mp3
  #define PHASE 5
#end install_audio

// Pets in Battle
#begin install_audio
  #define SOURCES \
    backflip.mp3 play_dead.mp3 rollover.mp3 beg.mp3 jump.mp3 heal_dance.mp3 \
    speak_v1.mp3 teleport_disappear.mp3 teleport_reappear.mp3
  #define PHASE 5
#end install_audio

// Estate
#begin install_audio
  #define SOURCES \
    AV_jump_in_water.mp3 telephone_pickup1.mp3 telephone_hang_up.mp3 \
    telephone_handle2.mp3 mailbox_alert.mp3 mailbox_close_1.mp3 \
    mailbox_close_2.mp3 mailbox_open_1.mp3 mailbox_open_2.mp3 \
    pet_the_pet.mp3 call_pet.mp3  beg_eat_swallow.mp3 burrow.mp3
  #define PHASE 5.5
#end install_audio

// Donalds Dock
#begin install_audio
  #define SOURCES \
    AV_swimming.mp3 GUI_balloon_popup_bubbles.mp3 \
    SZ_DD_Seagull.mp3 SZ_DD_Underwater.mp3 \
    SZ_DD_waterlap.mp3 SZ_DD_shipbell.mp3  SZ_DD_dockcreak.mp3
  #define PHASE 6
#end install_audio

// Minnies Melodyland
#begin install_audio
  #define SOURCES \
    SZ_MM_cymbal.mp3 SZ_MM_gliss.mp3
  #define PHASE 6
#end install_audio

// The Brrrgh
// not in use: SZ_TB_teethchatter.mp3
#begin install_audio
  #define SOURCES \
    SZ_TB_wind_1.mp3 SZ_TB_wind_2.mp3 SZ_TB_wind_3.mp3
  #define PHASE 8
#end install_audio

// Daisy Gardens
// not in use: SZ_DG_bee.mp3 SZ_DG_fountain_loop.mp3 SZ_DG_bird_05.mp3
#begin install_audio
  #define SOURCES \
    SZ_DG_bird_04.mp3 SZ_DG_bird_03.mp3 SZ_DG_bird_02.mp3 SZ_DG_bird_01.mp3
  #define PHASE 8
#end install_audio

// CogHQ
#begin install_audio
  #define SOURCES \
    CHQ_FACT_arms_retracting.mp3 CHQ_FACT_crate_effort.mp3 CHQ_FACT_door_open_final.mp3 \
    CHQ_FACT_door_open_sliding.mp3 CHQ_FACT_door_unlock.mp3 CHQ_FACT_elevator_up_down.mp3 \
    CHQ_FACT_stomper_large.mp3 CHQ_FACT_stomper_med.mp3 \
    CHQ_FACT_switch_depressed.mp3 CHQ_FACT_switch_popup.mp3 CHQ_FACT_switch_pressed.mp3 \
    CHQ_FACT_whistling_wind.mp3 CHQ_GOON_hunker_down.mp3 CHQ_FACT_crate_sliding.mp3 \
    CHQ_GOON_tractor_beam_alarmed.mp3 CHQ_VP_tractor_treads.mp3 CHQ_HQ_door_open_close.mp3 \
    CHQ_SOS_cage_door.mp3 CHQ_SOS_cage_land.mp3 CHQ_SOS_cage_lower.mp3 \
    CHQ_SOS_pies_restock.mp3 CHQ_VP_big_death.mp3 CHQ_VP_big_jump_stomp.mp3 \
    CHQ_VP_boss_cog_wwipe.mp3 CHQ_VP_collapse.mp3 CHQ_VP_door_close.mp3 \
    CHQ_VP_door_open.mp3 CHQ_VP_headshake.mp3 CHQ_VP_raise_up.mp3 \
    CHQ_GOON_rattle_shake.mp3 CHQ_VP_reeling_backwards.mp3 CHQ_VP_spin.mp3 \
    CHQ_VP_raining_gears.mp3 CHQ_VP_frisbee_gears.mp3 \
    Boss_COG_VO_murmur.mp3 Boss_COG_VO_grunt.mp3 Boss_COG_VO_question.mp3 Boss_COG_VO_statement.mp3 \
    CHQ_FACT_conveyor_belt.mp3 CHQ_FACT_gears_turning.mp3 CHQ_FACT_paint_splash.mp3 \
    CHQ_FACT_lava_fall_in.mp3 CHQ_FACT_stomper_raise.mp3 CHQ_VP_ramp_slide.mp3 \
    CHQ_VP_swipe.mp3 CHQ_door_close.mp3 CHQ_door_open.mp3 toon_decompress.mp3
  #define PHASE 9
#end install_audio

// CashbotHQ
#begin install_audio
  #define SOURCES \
    CBHQ_TRAIN_pass.mp3 CBHQ_TRAIN_stopstart.mp3 \
    CBHQ_CFO_magnet_on.mp3 CBHQ_CFO_magnet_loop.wav

  #define PHASE 10
#end install_audio    

// not in use
// // Dream land
// #begin install_audio
//   #define SOURCES \
//     SZ_DL_Snore_1.mp3 SZ_DL_Snore_2.mp3
//   #define PHASE 8
// #end install_audio

// Kart Racing
#begin install_audio
  #define SOURCES \
    KART_turboLoop.wav       KART_turboStart.mp3    KART_getGag.mp3 \
    KART_tossBanana.mp3      KART_Appear.mp3 \
    KART_raceStart1.mp3      KART_raceStart2.mp3    KART_Gag_Hit_Anvil.mp3 \
    KART_Engine_start_0.mp3  KART_Engine_loop_0.wav \
    KART_Engine_start_1.mp3  KART_Engine_loop_1.wav \
    KART_Engine_start_2.mp3  KART_Engine_loop_2.wav \
    KART_Skidding_On_Grass.wav   KART_Skidding_On_Asphalt.wav \
    KART_Hitting_Wood_Fence.mp3  KART_Hitting_Wood_Fence_1.mp3 \
    KART_Hitting_Metal_Fence.mp3 KART_Hitting_Wall.mp3 \
    KART_Applause_1.mp3 KART_Applause_2.mp3 KART_Applause_3.mp3 KART_Applause_4.mp3
  #define PHASE 6
#end install_audio


// LawbotHQ
#begin install_audio
  #define SOURCES \
    LB_cog_jury.mp3 LB_evidence_hit.mp3 \
    LB_evidence_miss.mp3 LB_toon_jury.mp3 LB_gavel.mp3 LB_toonup.mp3\
    LB_jury_moves.wav LB_camera_shutter_2.mp3\
    LB_laser_beam_on_2.mp3 LB_laser_beam_hum_2.mp3 LB_laser_beam_off_2.mp3\
    LB_sparks_1.mp3 LB_capacitor_discharge_3.mp3   

  #define PHASE 11
#end install_audio    


// Golf
#begin install_audio
  #define SOURCES \
    Golf_Ball_Rest_In_Cup.mp3 Golf_Ball_Goes_In_Start.wav Golf_Ball_Goes_In_Loop.wav Golf_Hit_Ball.mp3 \
    Golf_Hole_In_One.mp3 Golf_Sad_Noise_Kicked_Off_Hole.mp3 \
    Golf_Crowd_Buildup.mp3 Golf_Crowd_Applause.mp3 Golf_Crowd_Miss.mp3 \
    Golf_Hit_Barrier_3.mp3 \
    Golf_Moving_Barrier.mp3 Golf_Windmill_Loop.wav
  #define PHASE 6
#end install_audio

// Outdoor Zone
#begin install_audio
  #define SOURCES \
    OZ_Geyser_BuildUp_Loop.wav OZ_Geyser.mp3 OZ_Geyser_No_Toon.mp3 CC_move.mp3
  #define PHASE 6
#end install_audio


// BossbotHQ
#begin install_audio
  #define SOURCES \
    Mole_Surprise.mp3 \
    Mole_Stomp.mp3 \
    CHQ_FACT_conveyor_belt.wav
  #define PHASE 12
#end install_audio    


// Parties
#begin install_audio
  #define SOURCES \
    rocket_launch.mp3 \
    bounce1.mp3 bounce2.mp3 bounce3.mp3 \
    tick_counter_overflow.mp3 tick_counter_short.mp3
  #define PHASE 13
#end install_audio

#begin install_audio
  #define SOURCES \
    clock01.mp3 clock02.mp3 clock03.mp3 clock04.mp3 clock05.mp3 clock06.mp3 \
    clock07.mp3 clock08.mp3 clock09.mp3 clock10.mp3 clock11.mp3 clock12.mp3
  #define PHASE 4
#end install_audio
