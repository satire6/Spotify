#define DIR_TYPE models
#define INSTALL_TO models/misc

#begin flt_egg
  #define SOURCES $[wildcard *.flt ]
#end flt_egg

#begin maya_egg
  #define SOURCES $[wildcard *.mb ]
#end maya_egg

#begin install_egg
  #define SOURCES \
    fade.egg iris.egg \
    game_logo_card.egg \ 
    sphere.egg     
  #define PHASE 3
#end install_egg

#begin install_egg
  #define SOURCES \
   tt_m_ara_gen_placeholder.egg
  #define PHASE 3.5
#end install_egg
