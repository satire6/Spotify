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
    blue.egg boat.egg brown.egg \
    chest.egg fish.egg seabottom.egg \
    seafloor.egg treasure.egg

  #define PHASE 4
#end install_egg

