#! /bin/sh
# Rebuild lods

cd $TTMODELS/src/char
chars=`ls`
for folder in $chars
do
if [ -d "$folder" ]; then
cd $folder
if [ "$folder" = "dogm" -o "$folder" = "dogs" -o "$folder" = "dogl" ]; then
rm *500*egg;
rm *250*egg
fi
cd ..
fi
done