#define DIR_TYPE models
#define INSTALL_TO models/char

// These are the various animation files generated within this directory

// The animations get split up into three phases
#define phase_3_dog_anims \
    neutral run
#define phase_3.5_dog_anims \
    walk teleport book jump jump-z press-button pie-throw victory-dance conked leap_zhang \
    sidestep-left cringe running-jump jump-back-right duck wave angry shrug \
    tutorial-neutral left-point right-point-start right-point \
    give-props give-props-start right-hand-start \
    right-hand jump-zhang leap_z leap_zstart leap_zend leap_zhanglong \
    jump-zstart jump-zend
#define phase_4_dog_anims \
    swim tug-o-war sad-neutral losewalk bored taunt \
    up down left right fish periscope slip-forward slip-backward  \
    gamerun eatnrun gameneutral eat_neutral sit intoSit \
    applause confused give swing \
    fishEND reelH reelneutral pole cast reel fishneutral poleneutral fishAGAIN \
    bow castlong think petin petloop petend begCycle intoBeg begOut curtsy gameThrow
#define phase_5_dog_anims \
    lose toss shout tickle \
//    sidestep-right
    struggle smooch sprinkle-dust \
    happy-dance firehose water-gun juggle hold-bottle spit \
    hypnotize hold-magnet melt climb
#define phase_5.5_dog_anims \
    jellybeanJar phoneBack phoneNeutral takePhone callPet feedPet into_dig loop_dig water
#define phase_6_dog_anims \
    headdown-putt into-putt loop-putt rotateL-putt rotateR-putt swing-putt look-putt lookloop-putt bad-putt badloop-putt good-putt
#define phase_9_dog_anims \
    push block
#define phase_10_dog_anims \
    leverReach leverPull leverNeutral
#define dog_anims \
    $[phase_3_dog_anims] $[phase_3.5_dog_anims] $[phase_4_dog_anims] $[phase_5_dog_anims] \
    $[phase_5.5_dog_anims] $[phase_6_dog_anims] $[phase_9_dog_anims] $[phase_10_dog_anims]

// These animations (also listed above) are defined only on the shorts
// body types.
#define male_only \
    tutorial-neutral left-point right-point-start right-point \
    give-props-start give-props right-hand-start \
    right-hand bow    

// These animations (also listed above) are defined only on the skirts
// body types.
#define female_only \
    curtsy gameThrow
// These animations (also listed above) are the only ones that are
// defined on the naked torso.
#define naked_anims \
    neutral run

// These animations (also listed above) should not be compressed.
#define nc_anims \
   right-hand climb

#define tug-o-war_frames 2 21
#define into_dig_frames 1 10
#define loop_dig_frames 1 41
#define water_frames 1 36

#define dog_anims_male \
  $[filter-out $[female_only],$[dog_anims]]
#define dog_anims_female \
  $[filter-out $[male_only],$[dog_anims]]
#define dog_anims_naked \
  $[filter $[naked_anims],$[dog_anims]]

#define phase_3_dog_anims_male \
  $[filter-out $[female_only],$[phase_3_dog_anims]]
#define phase_3_dog_anims_female \
  $[filter-out $[male_only],$[phase_3_dog_anims]]

#define phase_3.5_dog_anims_male \
  $[filter-out $[female_only],$[phase_3.5_dog_anims]]
#define phase_3.5_dog_anims_female \
  $[filter-out $[male_only],$[phase_3.5_dog_anims]]

#define phase_4_dog_anims_male \
  $[filter-out $[female_only],$[phase_4_dog_anims]]
#define phase_4_dog_anims_female \
  $[filter-out $[male_only],$[phase_4_dog_anims]]

#define phase_5_dog_anims_male \
  $[filter-out $[female_only],$[phase_5_dog_anims]]
#define phase_5_dog_anims_female \
  $[filter-out $[male_only],$[phase_5_dog_anims]]

#define phase_5.5_dog_anims_male \
  $[filter-out $[female_only],$[phase_5.5_dog_anims]]
#define phase_5.5_dog_anims_female \
  $[filter-out $[male_only],$[phase_5.5_dog_anims]]

#define phase_6_dog_anims_male \
  $[filter-out $[female_only],$[phase_6_dog_anims]]
#define phase_6_dog_anims_female \
  $[filter-out $[male_only],$[phase_6_dog_anims]]

#define phase_9_dog_anims_male \
  $[filter-out $[female_only],$[phase_9_dog_anims]]
#define phase_9_dog_anims_female \
  $[filter-out $[male_only],$[phase_9_dog_anims]]

#define phase_10_dog_anims_male \
  $[filter-out $[female_only],$[phase_10_dog_anims]]
#define phase_10_dog_anims_female \
  $[filter-out $[male_only],$[phase_10_dog_anims]]

// The amount to scale and rotate the head.  0.25 * 1.0857 = 0.271425.
// Note that this is also defined in each of the dog?? files, as well
// as in heads.
#define dog_head_transform -TS 0.271425 -TR 0,180,0

//#######################################High Lod####################################################
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_torso_
  #define MODEL default
  #define POLY_MODEL 1000
  #define CHAR_NAME dog-torso-m
  #define ANIMS $[dog_anims_male]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts:mm_hand_left_zero -subset dogMMshorts:mm_hand_right_zero -subset dogMMshorts:mm_neck_zero \
                                            -subset dogMMshorts:mm_arm_left_zero -subset dogMMshorts:mm_arm_right_zero -subset dogMMshorts:mm_shirt_uv_zero \
                                            -subset dogMMshorts:mm_sleeve_short_left_zero -subset dogMMshorts:mm_sleeve_short_right_zero \
                                            -subset dogMMshorts:mm_shorts_med_uv_zero -subset dogMMshorts:mm_shorts_inside_zero \ 
                                            -subroot dogMMshorts:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_head_
  #define MODEL default
  #define POLY_MODEL 1000
  #define CHAR_NAME dog-head-ls
  #define ANIMS $[dog_anims_male]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts:mm_ear_long_left_zero -subset dogMMshorts:mm_ear_long_right_zero -subset dogMMshorts:mm_eyes_zero \
                                        -subset dogMMshorts:mm_head_long_zero -subset dogMMshorts:mm_muzzle_short_zero -subset dogMMshorts:mm_nose_small_zero \
                                        -subset dogMMshorts:mm_pupil_left_zero -subset dogMMshorts:mm_pupil_right_zero -subset dogMMshorts:mm_head_front_long_zero \ 
                                        -subroot dogMMshorts:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_legs_
  #define MODEL default
  #define POLY_MODEL 1000
  #define CHAR_NAME dog-legs-m
  #define ANIMS $[dog_anims_male]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts:mm_foot_left_zero -subset dogMMshorts:mm_foot_right_zero -subset dogMMshorts:mm_leg_left_zero -subset dogMMshorts:mm_leg_right_zero \ 
                                        -subroot dogMMshorts:Skeleton 
#end maya_char_egg

//Now we do the female
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_skirt_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_legs_
  #define ANIMS $[filter $[female_only],$[dog_anims]]
  #define CHAR_NAME dog-legs-l
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMskirt:mf_foot_left_zero -subset dogMMskirt:mf_foot_right_zero -subset dogMMskirt:mf_leg_left_zero -subset dogMMskirt:mf_leg_right_zero \ 
                                        -subroot dogMMskirt:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_skirt_
  #define EGG_PREFIX tt_a_chr_dgm_skirt_torso_
  #define MODEL default
  #define POLY_MODEL 1000
  #define CHAR_NAME dog-torso-md
  #define ANIMS $[dog_anims_female]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMskirt:mf_hand_left_zero -subset dogMMskirt:mf_hand_right_zero -subset dogMMskirt:mf_neck_zero \
                                            -subset dogMMskirt:mf_arm_left_zero -subset dogMMskirt:mf_arm_right_zero -subset dogMMskirt:mf_blouse_uv_zero \
                                            -subset dogMMskirt:mf_sleeve_short_left_zero -subset dogMMskirt:mf_sleeve_short_right_zero \
                                            -subset dogMMskirt:mf_skirt_uv_zero -subset dogMMskirt:mf_skirt_cap_zero \ 
                                            -subroot dogMMskirt:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_skirt_
  #define EGG_PREFIX tt_a_chr_dgm_skirt_head_
  #define MODEL default
  #define POLY_MODEL 1000
  #define CHAR_NAME dog-head-ss
  #define ANIMS $[dog_anims_female]
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMskirt:mf_ear_long_left_zero -subset dogMMskirt:mf_ear_long_right_zero -subset dogMMskirt:mf_eyes_zero \
                                        -subset dogMMskirt:mf_head_small_zero -subset dogMMskirt:mf_muzzle_short_zero -subset dogMMskirt:mf_nose_small_zero \
                                        -subset dogMMskirt:mf_pupil_left_zero -subset dogMMskirt:mf_pupil_right_zero -subset dogMMskirt:mf_head_front_short_zero \ 
                                        -subroot dogMMskirt:Skeleton 
#end maya_char_egg

//#######################################Med Lod####################################################
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_500_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_torso_
  #define MODEL default
  #define POLY_MODEL 500
  #define CHAR_NAME dog-torso-m
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts500:mm_hand_left_500 -subset dogMMshorts500:mm_hand_right_500 -subset dogMMshorts500:mm_neck_500 \
                                            -subset dogMMshorts500:mm_arm_left_500 -subset dogMMshorts500:mm_arm_right_500 -subset dogMMshorts500:mm_shirt_500 \
                                            -subset dogMMshorts500:mm_sleeve_left_500 -subset dogMMshorts500:mm_sleeve_right_500 \
                                            -subset dogMMshorts500:mm_shorts_500 -subset dogMMshorts500:mm_shorts_inside_500 \ 
                                            -subroot dogMMshorts500:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_500_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_head_
  #define MODEL default
  #define POLY_MODEL 500
  #define CHAR_NAME dog-head-ls
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts500:mm_ear_long_left_500 -subset dogMMshorts500:mm_ear_long_right_500 -subset dogMMshorts500:mm_eyes_500 \
                                        -subset dogMMshorts500:mm_head_long_500 -subset dogMMshorts500:mm_muzzle_short_500 -subset dogMMshorts500:mm_nose_small_500 \
                                        -subset dogMMshorts500:mm_pupil_left_500 -subset dogMMshorts500:mm_pupil_right_500 -subset dogMMshorts500:mm_head_front_500 \ 
                                        -subroot dogMMshorts500:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_500_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_legs_
  #define MODEL default
  #define POLY_MODEL 500
  #define CHAR_NAME dog-legs-m
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts500:mm_foot_left_500 -subset dogMMshorts500:mm_foot_right_500 -subset dogMMshorts500:mm_leg_left_500 -subset dogMMshorts500:mm_leg_right_500 \ 
                                            -subroot dogMMshorts500:Skeleton 
#end maya_char_egg

//Now we do the female

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_skirt_500_
  #define EGG_PREFIX tt_a_chr_dgm_skirt_torso_
  #define MODEL default
  #define POLY_MODEL 500
  #define CHAR_NAME dog-torso-md
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMskirt500:mf_hand_left_500 -subset dogMMskirt500:mf_hand_right_500 -subset dogMMskirt500:mf_neck_500 \
                                            -subset dogMMskirt500:mf_arm_left_500 -subset dogMMskirt500:mf_arm_right_500 -subset dogMMskirt500:mf_blouse_500 \
                                            -subset dogMMskirt500:mf_sleeve_left_500 -subset dogMMskirt500:mf_sleeve_right_500 \
                                            -subset dogMMskirt500:mf_skirt_500 -subset dogMMskirt500:mf_skirt_cap_500 \ 
                                            -subroot dogMMskirt500:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_skirt_500_
  #define EGG_PREFIX tt_a_chr_dgm_skirt_head_
  #define MODEL default
  #define POLY_MODEL 500
  #define CHAR_NAME dog-head-ss
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMskirt500:mf_ear_long_left_500 -subset dogMMskirt500:mf_ear_long_right_500 -subset dogMMskirt500:mf_eyes_500 \
                                        -subset dogMMskirt500:mf_head_small_500 -subset dogMMskirt500:mf_muzzle_short_500 -subset dogMMskirt500:mf_nose_small_500 \
                                        -subset dogMMskirt500:mf_pupil_left_500 -subset dogMMskirt500:mf_pupil_right_500 \ 
                                        -subroot dogMMskirt500:Skeleton 
#end maya_char_egg

//#######################################Low Lod####################################################
#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_200_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_torso_
  #define MODEL default
  #define POLY_MODEL 250
  #define CHAR_NAME dog-torso-m
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts200:mm_hand_left_200 -subset dogMMshorts200:mm_hand_right_200 -subset dogMMshorts200:mm_neck_200 \
                                            -subset dogMMshorts200:mm_arm_left_200 -subset dogMMshorts200:mm_arm_right_200 -subset dogMMshorts200:mm_shirt_200 \
                                            -subset dogMMshorts200:mm_sleeve_left_200 -subset dogMMshorts200:mm_sleeve_right_200 \
                                            -subset dogMMshorts200:mm_shorts_200 -subset dogMMshorts200:mm_shorts_cap_200 \ 
                                            -subroot dogMMshorts200:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_200_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_head_
  #define MODEL default
  #define POLY_MODEL 250
  #define CHAR_NAME dog-head-ls
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts200:mm_ear_left_200 -subset dogMMshorts200:mm_ear_right_200 -subset dogMMshorts200:mm_eyes_200 \
                                        -subset dogMMshorts200:mm_head_big_200 -subset dogMMshorts200:mm_muzzle_short_200 -subset dogMMshorts200:mm_nose_small_200 \
                                        -subset dogMMshorts200:mm_pupil_left_200 -subset dogMMshorts200:mm_pupil_right_200 -subset dogMMshorts200:mm_head_front_short_200 \ 
                                        -subroot dogMMshorts200:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_shorts_200_
  #define EGG_PREFIX tt_a_chr_dgm_shorts_legs_
  #define MODEL default
  #define POLY_MODEL 250
  #define CHAR_NAME dog-legs-m
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMshorts200:mm_foot_left_200 -subset dogMMshorts200:mm_foot_right_200 -subset dogMMshorts200:mm_leg_left_200 -subset dogMMshorts200:mm_leg_right_200 \ 
                                            -subroot dogMMshorts200:Skeleton 
#end maya_char_egg

//Now we do the female

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_skirt_200_
  #define EGG_PREFIX tt_a_chr_dgm_skirt_torso_
  #define MODEL default
  #define POLY_MODEL 250
  #define CHAR_NAME dog-torso-md
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMskirt200:mf_hand_left_200 -subset dogMMskirt200:mf_hand_right_200 -subset dogMMskirt200:mf_neck_200 \
                                            -subset dogMMskirt200:mf_arm_left_200 -subset dogMMskirt200:mf_arm_right_200 -subset dogMMskirt200:mf_blouse_200 \
                                            -subset dogMMskirt200:mf_sleeve_left_200 -subset dogMMskirt200:mf_sleeve_right_200 \
                                            -subset dogMMskirt200:mf_skirt_200 -subset dogMMskirt200:mf_skirt_cap_200 \ 
                                            -subroot dogMMskirt200:Skeleton 
#end maya_char_egg

#begin maya_char_egg
  #define MAYA_PREFIX tt_a_chr_dgm_skirt_200_
  #define EGG_PREFIX tt_a_chr_dgm_skirt_head_
  #define MODEL default
  #define POLY_MODEL 250
  #define CHAR_NAME dog-head-ss
  #define MAYA2EGG_OPTS $[MAYA2EGG_OPTS] -subset dogMMskirt200:mf_ear_left_200 -subset dogMMskirt200:mf_ear_right_200 -subset dogMMskirt200:mf_eyes_small_200 \
                                        -subset dogMMskirt200:mf_head_small_200 -subset dogMMskirt200:mf_muzzle_short_200 -subset dogMMskirt200:mf_nose_small_200 \
                                        -subset dogMMskirt200:mf_pupil_left_200 -subset dogMMskirt200:mf_pupil_right_200 \ 
                                        -subroot dogMMskirt200:Skeleton 
#end maya_char_egg

#begin filter_egg
  #define TARGET_DIR PFS
  #define SOURCES \
    $[matrix tt_a_chr_dgm_,shorts skirt,_torso_ _head_,1000 500 250,.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,1000 500 250,.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_ ,$[dog_anims_male],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_ ,$[dog_anims_female],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_ ,$[dog_anims],.egg]
  #defer COMMAND \
    egg-rename -strip_prefix dogMMskirt: -strip_prefix dogMMshorts: -strip_prefix dogMMskirt500: -strip_prefix dogMMshorts500: \
    -strip_prefix dogMMskirt200: -strip_prefix dogMMshorts200: -d $[TARGET_DIR] $[source]
#end filter_egg

#begin filter_egg
  #define TARGET_DIR topstrip
  #define SOURCES \
    $[matrix PFS/tt_a_chr_dgm_,shorts skirt,_head_,1000 500 250,.egg]\
    $[matrix PFS/tt_a_chr_dgm_,shorts,_head_,$[dog_anims_male],.egg] \
    $[matrix PFS/tt_a_chr_dgm_,skirt,_head_,$[dog_anims_female],.egg]
  #defer COMMAND \
    egg-topstrip -i -t def_head -d $[TARGET_DIR] $[source]
#end filter_egg

#begin filter_egg
  #define TARGET_DIR topstrip
  #define SOURCES \
    $[matrix PFS/tt_a_chr_dgm_,shorts skirt,_torso_,1000 500 250,.egg]\
    $[matrix PFS/tt_a_chr_dgm_,shorts,_torso_,$[dog_anims_male],.egg] \
    $[matrix PFS/tt_a_chr_dgm_,skirt,_torso_,$[dog_anims_female],.egg]
  #defer COMMAND \
    egg-topstrip -i -t MAIN1 -d $[TARGET_DIR] $[source]
#end filter_egg

// Optimize the various characters.
#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix topstrip/tt_a_chr_dgm_,shorts,_head_,1000 500 250 $[dog_anims_male],.egg] \
    $[matrix topstrip/tt_a_chr_dgm_,skirt,_head_,1000 500 250 $[dog_anims_female],.egg]
  #define OPTCHAR_OPTS \  
     -rename MMDog_shorts_500,MMDog_shorts \     
     -rename MMDog_shorts_200,MMDog_shorts \       
     -rename MMDog_skirt_500,MMDog_skirt \       
     -rename MMDog_skirt_200,MMDog_skirt \
     -no -expose def_head,def_right_pupil,def_left_pupil \
     $[dog_head_transform] \
     -p def_head,root \
     -p def_right_earA,def_head \
     -p def_left_earA,def_head \
     -p def_right_pupil,def_head \
     -p def_left_pupil,def_head \
     -p def_right_earB,root \
     -p def_right_earC,def_right_earB \
     -p def_right_earD,def_right_earC \
     -p def_left_earB,root \
     -p def_left_earC,def_left_earB \
     -p def_left_earD,def_left_earC \
     -p TheNeck,def_neck \
     -flag '*eyes*'=eyes \
     -flag '*head_small*'=head \     
     -flag '*head_long*'=head \     
     -flag '*head_big*'=head  \
     -flag '*head_front*'=head-front \
     -flag '*ear*'=ears \ 
     -flag '*muzzle*'=muzzle \
     -flag '*nose*'=nose
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix topstrip/tt_a_chr_dgm_,shorts,_torso_,1000 500 250 $[dog_anims_male],.egg] \
    $[matrix topstrip/tt_a_chr_dgm_,skirt,_torso_,1000 500 250 $[dog_anims_female],.egg]
  #define OPTCHAR_OPTS \  
     -rename MMDog_shorts_500,MMDog_shorts \     
     -rename MMDog_shorts_200,MMDog_shorts \       
     -rename MMDog_skirt_500,MMDog_skirt \       
     -rename MMDog_skirt_200,MMDog_skirt \
     -no -TR 0,180,0 -TS 0.25 \
     -expose def_toHead,def_joint_right_hold,def_joint_left_hold,def_joint_attachFlower \
     -zero def_joint_right_hold,ijk \
     -zero def_joint_left_hold,ijk \
     -zero def_joint_right_hold,ijk \
     -zero def_joint_left_hold,ijk \
     -p def_right_shoulder,def_right_shoulder \
     -p def_right_sleeve_long,def_right_shoulder \
     -p def_left_sleeve_long,def_left_shoulder \
     //-p def_right_forearm,def_right_wrist \
     -p def_right_palm,def_right_wrist \
     -p def_right_midA,def_right_palm \
     -p def_right_midB,def_right_midA \
     -p def_right_thumbA,def_right_wrist \
     -p def_right_thumbB,def_right_thumbA \
     -p def_right_thumbC,def_right_thumbB \
     //-p def_left_forearm,def_left_wrist \
     -p def_left_palm,def_left_wrist \
     -p def_left_midA,def_left_palm \
     -p def_left_midB,def_left_midA \
     -p def_left_thumbA,def_left_wrist \
     -p def_left_thumbB,def_left_thumbA \
     -p def_left_thumbC,def_left_thumbB \
     -p def_spineB,root \
     -p def_cageA,def_spineB \
     -p def_cageB,def_cageA \
     -p def_joint_attachFlower,def_cageA \
     -p def_left_shoulder,def_cageB \
     -p def_right_shoulder,def_cageB \
     -p def_left_pant_top,MAIN1 \
     -p def_left_pant_bottom,def_left_pant_top \
     -p def_right_pant_top,MAIN1 \
     -p def_right_pant_bottom,def_right_pant_top \
     -p def_right_sleeve_short,root \
     -p def_left_sleeve_short,root \
     -flag '*skirt_cap*'=torso-bot-cap \     
     -flag '*skirt_inside*'=torso-bot-cap \
     -flag '*shorts_inside*'=torso-bot-cap \     
     -flag '*shorts_cap*'=torso-bot-cap \
     -flag '*skirt*uv*'=torso-bot \     
     -flag '*skirt_500'=torso-bot \     
     -flag '*skirt_200'=torso-bot \
     -flag '*shorts*uv*'=torso-bot \     
     -flag '*shorts_500'=torso-bot \     
     -flag '*shorts_200'=torso-bot \
     -flag '*shirt*'=torso-top \
     -flag '*blouse*'=torso-top \
     -flag '*sleeve*'=sleeves \
     -flag '*arm*'=arms \
     -flag '*neck*'=neck \
     -flag '*hand*'=hands 
#end optchar_egg

#begin optchar_egg
  #define TARGET_DIR optchar
  #define SOURCES \
    $[matrix PFS/tt_a_chr_dgm_,shorts,_legs_,1000 500 250,.egg] \
    $[matrix PFS/tt_a_chr_dgm_,shorts,_legs_,$[dog_anims],.egg]
  #define OPTCHAR_OPTS \  
     -rename MMDog_shorts_500,MMDog_shorts \     
     -rename MMDog_shorts_200,MMDog_shorts \       
     -rename MMDog_skirt_500,MMDog_skirt \       
     -rename MMDog_skirt_200,MMDog_skirt \
     -no -TR 0,180,0 -TS 0.25 \
     -expose joint_hips,joint_shadow,joint_nameTag \
     -flag '*leg*'=legs \
     -flag '*foot*'=feet
#end optchar_egg

// Phase 3
#begin install_egg
  #define SOURCE_DIR optchar
  #define SOURCES \
    $[matrix  tt_a_chr_dgm_,shorts,_torso_ _head_ _legs_,1000 500 250,.egg] \
    $[matrix  tt_a_chr_dgm_,skirt,_torso_ _head_,1000 500 250,.egg]
  #define UNPAL_SOURCES \
    $[matrix  tt_a_chr_dgm_,shorts,_torso_ _head_ _legs_,$[phase_3_dog_anims_male] ,.egg] \
    $[matrix  tt_a_chr_dgm_,skirt,_torso_ _head_,$[phase_3_dog_anims_female] ,.egg]
  #define PHASE 3
#end install_egg

// Phase 3.5
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[filter-out $[nc_anims],$[phase_3.5_dog_anims_male]],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[filter-out $[nc_anims],$[phase_3.5_dog_anims_female]],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[filter-out $[nc_anims],$[phase_3.5_dog_anims]],.egg]
  #define PHASE 3.5
#end install_egg

// Phase 3.5 NC: Non-compressed anims
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[filter $[nc_anims],$[phase_3.5_dog_anims_male]],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[filter $[nc_anims],$[phase_3.5_dog_anims_female]],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[filter $[nc_anims],$[phase_3.5_dog_anims]],.egg]
  #define EGG2BAM_OPTS -NC
  #define PHASE 3.5
#end install_egg

// Phase 4
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[phase_4_dog_anims_male],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[phase_4_dog_anims_female],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[phase_4_dog_anims],.egg]
  #define PHASE 4
#end install_egg

// Phase 5
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[filter-out $[nc_anims],$[phase_5_dog_anims_male]],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[filter-out $[nc_anims],$[phase_5_dog_anims_female]],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[filter-out $[nc_anims],$[phase_5_dog_anims]],.egg]
  #define PHASE 5
#end install_egg

// Phase 5 NC: Non-compressed anims
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[filter $[nc_anims],$[phase_5_dog_anims_male]],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[filter $[nc_anims],$[phase_5_dog_anims_female]],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[filter $[nc_anims],$[phase_5_dog_anims]],.egg]
  #define EGG2BAM_OPTS -NC
  #define PHASE 5
#end install_egg

// Phase 5.5
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[phase_5.5_dog_anims_male],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[phase_5.5_dog_anims_female],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[phase_5.5_dog_anims],.egg]
  #define PHASE 5.5
#end install_egg

// Phase 6
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[phase_6_dog_anims_male],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[phase_6_dog_anims_female],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[phase_6_dog_anims],.egg]
  #define PHASE 6
#end install_egg

// Phase 9
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[phase_9_dog_anims_male],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[phase_9_dog_anims_female],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[phase_9_dog_anims],.egg]
  #define PHASE 9
#end install_egg

// Phase 10
#begin install_egg
  #define SOURCE_DIR optchar
  #define UNPAL_SOURCES \
    $[matrix tt_a_chr_dgm_,shorts,_torso_ _head_,$[phase_10_dog_anims_male],.egg] \
    $[matrix tt_a_chr_dgm_,skirt,_torso_ _head_,$[phase_10_dog_anims_female],.egg] \
    $[matrix tt_a_chr_dgm_,shorts,_legs_,$[phase_10_dog_anims],.egg]
  #define PHASE 10
#end install_egg
