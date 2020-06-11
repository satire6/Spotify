#define DIR_TYPE models
#define INSTALL_TO models/news

// TODO figure out how to install only a subset of the jpgs, type them out by hand?
#begin install_misc
   #define SOURCES \
        news_index.txt \
        $[wildcard tt*.jpg]        
   #define PHASE 3.5
#end install_misc
