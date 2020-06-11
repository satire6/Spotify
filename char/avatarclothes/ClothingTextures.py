import os, sys, time

if not os.path.isfile("/cygwin/home/abhinath/player/ttmodels/src/char/avatarclothes/clothingTextures.txt"):
    clothingTextures = open("/cygwin/home/abhinath/player/ttmodels/src/char/avatarclothes/clothingTextures.txt", "w")
else:
    clothingTextures = open("/cygwin/home/abhinath/player/ttmodels/src/char/avatarclothes/clothingTextures.txt", "r+")

clothingTextures.seek(0, 2)

os.chdir('Z:/Toontown/toontown3D/texture/character/avatar/clothing')

print "Now listing directory contents: ", os.getcwd(), "...\n"

files = os.listdir("./")

for file in files:
    if file.find("tt_t_chr_avt_skirt")>-1:
        #modTime = time.strftime('%m-%d', time.gmtime(os.stat(file).st_mtime))
        #if modTime == '09-14':
            #clothingTextures.write(file + ": 128 128\n")
        if file.find("halloween3.tif")>-1 or file.find("halloween4.tif")>-1:
            clothingTextures.write(file+"\n")
        
print "Okie Dokie, Job done!"
        
clothingTextures.close()