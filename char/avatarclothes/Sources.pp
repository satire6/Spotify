#define DIR_TYPE models
#define INSTALL_TO models/char

#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

#begin install_egg
  #define SOURCES \
    avatar-clothes.egg
  #define PHASE 3
#end install_egg

#begin install_egg
  #define SOURCES \
    catalog-clothes.egg catalog-clothes3.egg halloween-clothes.egg \
    holiday-shirts.egg catalog-clothes2.egg valentine-clothes.egg \
    stPats-clothes.egg 4thJuly-clothes.egg contestWinner-clothes.egg \
    cowboy-clothes.egg pajama-clothes.egg catalog-clothes7.egg \
    tt_m_chr_avt_winterBottoms.egg special-award-clothes.egg \
    special-award-clothes-2.egg special-award-clothes-3.egg
  #define PHASE 4
#end install_egg
