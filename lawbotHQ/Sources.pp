#define DIR_TYPE models
#define INSTALL_TO models/lawbotHQ

#define fltfiles $[wildcard *.flt]
#begin flt_egg
  #define SOURCES $[fltfiles]
#end flt_egg

#define mayafiles $[wildcard *.mb]
#begin maya_egg
  #define SOURCES $[mayafiles]
#end maya_egg

#begin install_egg
  #define SOURCES \ 
        $[fltfiles:%.flt=%.egg] $[mayafiles:%.mb=%.egg]
        #define PHASE 11
#end install_egg


#printvar MAYA_LOCATION

