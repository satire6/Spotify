#define DIR_TYPE models
#define INSTALL_TO models/fonts

// This is no longer used.
//#begin install_egg
//  // Toon font.
//  #define SOURCES Comic.egg
//  #define PHASE 3
//#end install_egg


#begin install_egg
  // Interface fonts.
  #define SOURCES \
    MickeyFont_english.egg MinnieFont.egg \
    HastyPudding.egg Comic.egg Humanist.egg //Ironwork.egg Comedy.egg
  #define PHASE 3
#end install_egg

#begin install_egg
  // Nametag fonts.
  #define SOURCES \
    Scurlock.egg AnimGothic.egg Danger.egg \
    Alie.egg OysterBar.egg RedDogSaloon.egg
  #define PHASE 3
#end install_egg


#begin install_misc
  // The primary interface font, now installed as directly as a TTF file.
  #define SOURCES ImpressBT.ttf
  #define PHASE 3
#end install_misc

#begin install_misc
  // This needs to be in phase 3 becuase it is used in the billing screens
  // The suit font, now installed as directly as a TTF file.
  #define SOURCES vtRemingtonPortable.ttf
  #define PHASE 3
#end install_misc

#if $[eq $[LANGUAGE], japanese]
  #begin install_misc
    #define SOURCES DFKyG7.ttc HGHanKointai.ttc HGHeiseiMarugothictaiW8.ttc \
            MickeyFontFull.ttf
    #define PHASE 3
  #end install_misc

  #begin install_egg
    #define SOURCES MickeyFont_japanese.egg
  #end install_egg
#endif

// Neighborhood sign fonts follow.

#begin install_egg
  // Toontown Central.
  #define SOURCES Comedy.egg Courier.egg CourierBold.egg
  #define PHASE 3
#end install_egg

#begin install_egg
  // Donald's Dock.
  #define SOURCES Portago.egg
  #define PHASE 3
#end install_egg

#begin install_egg
  // Minnie's Melodyland
  #define SOURCES Musicals.egg
  #define PHASE 3
#end install_egg

#begin install_egg
  // The Brrrgh.
  #define SOURCES Aftershock.egg
  #define PHASE 3
#end install_egg

#begin install_egg
  // Daisy's Garden.
  #define SOURCES Ironwork.egg
  #define PHASE 3
#end install_egg

#begin install_egg
  // Donald's Dreamland.
  #define SOURCES JiggeryPokery.egg
  #define PHASE 3
#end install_egg


// We are not using any of these right now
//#begin install_egg
//  // Sign fonts.
//  #define SOURCES \
//    ComicScriptOutline.egg ComicScriptShaded.egg HastyPudding.egg \
//    SlapstickComicBold.egg Humanist.egg \
//    SlapstickComicOblique.egg TooneyNoodle.egg ZoinkFat.egg
//  #define PHASE 4
//#end install_egg

