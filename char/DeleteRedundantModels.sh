#! /bin/sh
# delete redundant models

cd $TTMODELS/built
phase=`ls`
for folder in $phase
do
if [ -d "$folder" ]; then
cd $folder
rm models/char/*tt_a_chr_dg*
cd ..
fi
done 