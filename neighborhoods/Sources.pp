#define DIR_TYPE models
#define INSTALL_TO models/neighborhoods

#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

#begin maya_egg
  #define SOURCES $[wildcard *.mb]
#end maya_egg

#begin install_egg
  #define SOURCES toontown_central.egg
  #define PHASE 4
#end install_egg

#begin install_egg
  #define SOURCES donalds_dock.egg
  #define PHASE 6
#end install_egg


#begin install_egg
  #define SOURCES \
    minnies_melody_land.egg \
    minnies_melody_land_ext.egg
  #define PHASE 6
#end install_egg


#begin install_egg
  #define SOURCES the_burrrgh.egg
  #define PHASE 8
#end install_egg


#begin install_egg
  #define SOURCES \
    daisys_garden.egg \
    daisys_garden_ext.egg
  #define PHASE 8
#end install_egg


#begin install_egg
  #define SOURCES donalds_dreamland.egg
  #define PHASE 8
#end install_egg
