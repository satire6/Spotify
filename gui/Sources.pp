#define DIR_TYPE models
#define INSTALL_TO models/gui

#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

#begin maya_egg
  #define SOURCES $[wildcard *.mb]
#end maya_egg

// Toontown Icons and Cursor
#begin install_misc
  #define SOURCES \
    toontown.ico toontown_mac_icon.rgb toonmono.cur 
  #define PHASE 3
#end install_misc

// Make a toon and pick a toon
// We do not need billing screens any more
// login_gui.egg
#begin install_egg
  #define SOURCES \
    loading-background.egg progress-background.egg \
    laff_o_meter.egg dialog_box_gui.egg dialog_box_buttons_gui.egg \
    create_a_toon.egg create_a_toon_gui.egg \
    pick_a_toon_gui.egg tt_m_gui_mat_nameShop.egg \
    trashcan_gui.egg quit_button.egg chat_button_gui.egg \
    toon_council.egg cog_icons.egg \
    tt_m_gui_mat_mainGui.egg tt_m_gui_mat_spotlight.egg \
    tt_m_gui_pat_mainGui.egg tt_m_gui_ups_mainGui.egg \
    nameshop_gui.egg \
    ChatPanel.egg scroll_arrows_gui.egg tt_m_gui_ups_panelBg.egg \
    tt_m_gui_ups_logo_noText.egg
    // We are not using these anymore
    // loading-screen.egg login-background.egg month_year_gui.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      feature_gui_$[LANGUAGE].egg members_only_gui_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      feature_gui_english.egg members_only_gui_english.egg
  #endif
  #define PHASE 3
#end install_egg

// Tutorial
// Sticker book, quick talker, etc
#begin install_egg
  #define SOURCES \
    stickerbook_gui.egg sticker_open_close_gui.egg \
    toontown_map.egg cloud.egg QT_buttons.egg \
    inventory_gui.egg inventory_icons.egg photo_frame.egg \
    friendslist_gui.egg chat_input_gui.egg clock_gui.egg \
    battle_gui.egg suit_detail_panel.egg cog_life_meter.egg \
    avatar_panel_gui.egg jar_gui.egg \
    suitpage_gui.egg suitpage_frame.egg matching_game_gui.egg \
    filmstrip.egg name_star.egg speedChatGui.egg fishingBook.egg fishingTrophy.egg \
    frame.egg frame4names.egg sos_textures.egg playingCard.egg fishingTrophyBowl.egg \
    PetControlPannel.egg tt_m_gui_brd_avatarPanelBg.egg \
    tt_m_gui_brd_inviteButton.egg tt_m_gui_brd_help.egg \
    tt_m_gui_brd_leaveBtn.egg tt_m_gui_ign_newsBtnGui.egg \
    tt_m_gui_ign_directNewsGui.egg tt_m_gui_ign_directNewsGuiNav.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      tutorial_gui_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      tutorial_gui_english.egg
  #endif
  #define PHASE 3.5
#end install_egg

// Kart Shop and Shtiker Book UI
#begin install_egg
  #define SOURCES \
    BuyAccessoryPanel.egg BuyKartPanel.egg ConfirmBuyKartPanel.egg Kart_MainMenuPanel.egg \
    ReturnKartPanel.egg ShtikerBookUI.egg BoughtAccessoryPanel.egg BoughtKartPanel.egg \
    ConfirmBuyAccessory.egg racingTrophy.egg racingTrophyBowl.egg racingTrophyBowl2.egg
  #define PHASE 6
#end install_egg

// Safezone things
#begin install_egg
  #define SOURCES \
    purchase_gui.egg gag_shop_purchase_gui.egg fishing_crank.egg fishingGui.egg \
    fishing_boot.egg tfa_images.egg AdoptReturnSell.egg PetShopInterface.egg \
    ReturnPet.egg AdoptPet.egg FishBingo.egg PetNamePanel.egg 
  #define PHASE 4
#end install_egg

// Minigames
#begin install_egg
  #define SOURCES \
    minigame_rules_gui.egg

  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      cannon_game_gui_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      cannon_game_gui_english.egg
  #endif
  #define PHASE 4
#end install_egg

// COG HQ Disguises stuff
#begin install_egg
  #if $[LANGUAGE]
    #define SOURCES \
      cog_disguises_$[LANGUAGE].egg
  #else
    #define SOURCES \
      cog_disguises_english.egg
  #endif
  #define PHASE 9
#end install_egg

// Estate stuff
#begin install_egg
  #define SOURCES \
    house_design_gui.egg package_delivery_panel.egg PetTutorial.egg \
    planting_gui.egg \
    planting_but_can_P.egg planting_but_can_Y.egg \ 
    planting_but_shovel_P.egg planting_but_shovel_Y.egg \
    catalogSoundIcons.egg
  #if $[LANGUAGE]
    #define SOURCES $[SOURCES] \
      catalog_gui_$[LANGUAGE].egg
  #else
    #define SOURCES $[SOURCES] \
      catalog_gui_english.egg
  #endif
  #define PHASE 5.5
#end install_egg

// Boarding Party Gui
#begin install_egg
  #define SOURCES \
    tt_m_gui_brd_groupListBg.egg \
    tt_m_gui_brd_status.egg tt_m_gui_brd_arrow.egg \
    tt_m_gui_brd_gotoArrow.egg tt_m_gui_brd_gotoBtn.egg
  #define PHASE 9
#end install_egg

// Top Toon Pictures stuff
#begin install_egg
   #define SOURCES topToonPictures.egg
#end install_egg
