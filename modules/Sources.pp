#define DIR_TYPE models
#define INSTALL_TO models/modules

//lamp_short.flt has a better maya version, but is used in toon_interior_2
#begin flt_egg
  #define SOURCES $[filter-out lamp_short.flt, $[wildcard *.flt]]
#end flt_egg

#begin maya_egg
  #define SOURCES $[wildcard *.mb]
#end maya_egg

// Tutorial
#begin install_egg
  #define SOURCES \
    walls.egg doors_practical.egg safe_zone_entrance_tunnel_TT.egg \
    windows.egg cornices.egg street_modules.egg street_modules_enhanced.egg \
    TT_A1.egg walls_basement.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      HQ_interior_$[LANGUAGE].egg hqTT_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      HQ_interior_english.egg hqTT_english.egg
  #endif
  #define PHASE 3.5
#end install_egg

// Toon interiors
#begin install_egg
  #define SOURCES \
    toon_interior_tutorial.egg \
    toon_interior.egg toon_interior_2.egg \
    toon_interior_L.egg toon_interior_T.egg \
    trophy_frame.egg bookcase.egg chair.egg coatrack.egg \
    counter.egg counterShort.egg desk.egg int_door.egg lamp_short.egg \
    lamp_tall.egg desk_only.egg desk_only_wo_phone.egg bookcase_low.egg \
    rug.egg tie_rack.egg umbrella_stand.egg toon_interior_textures.egg \
    facade_a.egg facade_aN.egg facade_b.egg facade_bN.egg \
    facade_c.egg facade_cN.egg facade_d.egg facade_dM.egg \
    facade_dN.egg facade_e.egg facade_eN.egg paper_trashcan.egg \
    couch_1person.egg couch_2person.egg ending_table.egg wood_fence.egg \
    tt_m_ara_int_toonhall.egg
  #define PHASE 3.5
#end install_egg

// Toontown central safe zone is phase 4
// Only some landmark buildings are used in the safezone
#begin install_egg
  #define SOURCES \
    safe_zone_tunnel_TT.egg trolley_station_TT.egg doors.egg TT_pond.egg \
    bank.egg library.egg school_house.egg mercantile.egg gazebo.egg \
    toonhall.egg clothshopTT.egg PetShopInterior.egg PetShopExterior_TT.egg Speedway_Tunnel.egg \
    partyGate_TT.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      gagShop_TT_$[LANGUAGE].egg gagShop_interior_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      gagShop_TT_english.egg gagShop_interior_english.egg
  #endif

  #define PHASE 4
#end install_egg

// Toontown central Streets are in phase 5
// the rest of the landmark buildings are used in the streets
#begin install_egg
  #define SOURCES \
    neighborhood_tunnel_TT.egg \
    TT_A2.egg TT_A3.egg TT_B1.egg TT_B2.egg TT_C1.egg \
    TT_A1_raised.egg TT_A2_raised.egg TT_B1_raised.egg TT_B2_raised.egg TT_C1_raised.egg \
    street_low_fence.egg
  #define PHASE 5
#end install_egg

// Suit buildings are in phase 5
#begin install_egg
  #define SOURCES \
    suit_landmark_sales.egg \
    suit_landmark_corp.egg \
    suit_landmark_legal.egg \
    suit_landmark_money.egg \
    suit_landmark_money2.egg \
    suit_walls.egg suit_door.egg \
    elevator.egg suit_sign.egg
  #define PHASE 5
#end install_egg

// Suit interiors are in phase 7
// cubesroom.egg
#begin install_egg
  #define SOURCES \
    suit_interior.egg cubicle_room.egg boss_suit_office.egg
  #define PHASE 7
#end install_egg


// Neighborhood specific modules

// Donalds Dock
#begin install_egg
  #define SOURCES \
    trolley_station_DD.egg \
    DD_A1.egg DD_A2.egg DD_B1.egg DD_B2.egg DD_C1.egg DD_D1.egg \
    neighborhood_tunnel_DD.egg safe_zone_entrance_tunnel_DD.egg \
    safe_zone_tunnel_DD.egg DD_doors.egg DD_doors_practical.egg DD_pond.egg \
    clothshopDD.egg PetShopExterior_DD.egg partyGate_DD.egg

// The DD HQ has changed from hqDD_$[LANGUAGE].egg to tt_m_ara_DD_SZ_hq_$[LANGUAGE].egg so changes
// need to be made for other languages! Thanks
  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      gagShop_DD_$[LANGUAGE].egg tt_m_ara_DD_hq_$[LANGUAGE].egg \
      tt_m_ara_DD_SZ_hq_$[LANGUAGE].egg
    #if $[eq $[LANGUAGE],english]
    #else
      #define SOURCES $[SOURCES] \
        hqDD_$[LANGUAGE].egg hqDD_SZ_$[LANGUAGE].egg 
    #endif
  #else
    #define SOURCES $[SOURCES] \
      gagShop_DD_english.egg tt_m_ara_DD_hq_english.egg \
      tt_m_ara_DD_SZ_hq_english.egg
  #endif
  #define PHASE 6
#end install_egg

// Minnies Melodyland
#begin install_egg
  #define SOURCES \
    trolley_station_MM.egg \
    MM_A1.egg MM_A2.egg MM_B1.egg MM_B2.egg MM_C1.egg MM_D1.egg MM_E1.egg \
    neighborhood_tunnel_MM.egg safe_zone_entrance_tunnel_MM.egg \
    safe_zone_tunnel_MM.egg MM_windows.egg MM_pond.egg \
    clothshopMM.egg PetShopExterior_MM.egg partyGate_MM.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      hqMM_$[LANGUAGE].egg gagShop_MM_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      hqMM_english.egg gagShop_MM_english.egg
  #endif
  #define PHASE 6
#end install_egg

// The Brrrgh
#begin install_egg
  #define SOURCES \
    trolley_station_BR.egg \
    BR_A1.egg BR_A2.egg BR_B1.egg BR_B2.egg BR_B3.egg BR_C1.egg \
    neighborhood_tunnel_BR.egg safe_zone_entrance_tunnel_BR.egg \
    safe_zone_tunnel_BR.egg BR_windows.egg clothshopBR.egg BR_pond.egg \
    PetShopExterior_BR.egg partyGate_BR.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      hqBR_$[LANGUAGE].egg gagShop_BR_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      hqBR_english.egg gagShop_BR_english.egg
  #endif
  #define PHASE 8
#end install_egg

// Daisy Gardens
#begin install_egg
  #define SOURCES \
    trolley_station_DG.egg \
    DG_A1.egg DG_A2.egg DG_B1.egg DG_C1.egg DG_D1.egg \
    cornices_DG.egg DG_windows.egg \
    neighborhood_tunnel_DG.egg safe_zone_entrance_tunnel_DG.egg \
    safe_zone_tunnel_DG.egg clothshopDG.egg street_modules_enhanced_DG.egg \
    DG_pond.egg PetShopExterior_DG.egg partyGate_DG.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      hqDG_$[LANGUAGE].egg gagShop_DG_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      hqDG_english.egg gagShop_DG_english.egg
  #endif
  #define PHASE 8
#end install_egg

// Donald Dreamland
#begin install_egg
  #define SOURCES \
    trolley_station_DL.egg \
    DL_A1.egg DL_B1.egg DL_C1.egg DL_D1.egg DL_E1.egg \
    DL_windows.egg DL_doors.egg DL_doors_practical.egg \
    neighborhood_tunnel_DL.egg safe_zone_entrance_tunnel_DL.egg \
    safe_zone_tunnel_DL.egg clothshopDL.egg DL_pond.egg PetShopExterior_DL.egg \
    partyGate_DL.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      hqDL_$[LANGUAGE].egg gagShop_DL_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      hqDL_english.egg gagShop_DL_english.egg
  #endif
  #define PHASE 8
#end install_egg
