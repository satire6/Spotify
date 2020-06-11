#define DIR_TYPE models
#define INSTALL_TO models/props

#begin flt_egg
  #define SOURCES $[wildcard *.flt]
#end flt_egg

// Tutorial
#begin install_egg
  #define SOURCES explosion.egg glow.egg dust_cloud.egg
  #if $[eq $[LANGUAGE], castillian]
    #define SOURCES $[SOURCES] suit-particles_castillian.egg
  #elif $[eq $[LANGUAGE], japanese]
    #define SOURCES $[SOURCES] suit-particles_japanese.egg
  #elif $[eq $[LANGUAGE], german]
    #define SOURCES $[SOURCES] suit-particles_german.egg
  #elif $[eq $[LANGUAGE], french]
    #define SOURCES $[SOURCES] suit-particles_french.egg
  #elif $[eq $[LANGUAGE], portuguese]
    #define SOURCES $[SOURCES] suit-particles_portuguese.egg
  #else
    #define SOURCES $[SOURCES] suit-particles_english.egg
  #endif
  #define PHASE 3.5
#end install_egg

#begin install_egg
  #define SOURCES \
    tot_jar.egg tt_m_efx_ext_smoke.egg \
    tt_m_efx_ext_particleCards.egg tt_m_efx_ext_fireworkCards.egg \
    tt_m_efx_ext_fireworkBurst_tflip.egg tt_m_efx_fireball.egg \
    tt_m_efx_smoke.egg
  #define PHASE 4
#end install_egg

#begin install_egg
  #define SOURCES \
    splash.egg \
    uberSoundEffects.egg
  #define PHASE 5
#end install_egg
