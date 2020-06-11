
import os
import sys

srcDir = os.path.expandvars("$TTMODELS/src")
os.chdir(srcDir)
print ("Looking for all flt files...")
srcModels = (os.popen("find . -name \*.flt -print")).readlines()

origDir = "/beta/toons/mg"
os.chdir(origDir)

oldModels = []

for model in srcModels:
    # Strip off the trailing newline
    model = model[:-1]
    # check the ttmodel date
    srcSize = os.path.getsize(os.path.join(srcDir, model))
    print ("Looking for: " + os.path.join(srcDir, model))
    # Strip off the filename from the directory path
    model = os.path.basename(model)
    origModels = (os.popen("find . -name " + model + " -print")).readlines()
    if (len(origModels) > 1):
        print ("      Warning: found " + `len(origModels)` + " versions")
    for origModel in origModels:
        # Strip off the trailing newline
        origModel = origModel[:-1]
        print ("      Found: " + os.path.join(origDir, origModel))
        # Check the original size
        origSize = os.path.getsize(origModel)
        # See if the original is newer than the ttmodels version
        # If it is, it needs to be updated
        if (origSize != srcSize):
            print ("      orig version is changed for file: " + model)
            oldModels.append(origModel)

if (len(oldModels) == 0):
    print ("All flt files are up to date")
else:
    print ("Need to update " + `len(oldModels)` + " file(s)")
    print ("Below are the commands to update. They are NOT done by this script")
    for oldModel in oldModels:
        print ("fltcopy -f " + os.path.join(origDir, oldModel))



