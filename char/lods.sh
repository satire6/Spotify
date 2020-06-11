list=`ls tt_a_chr_dgm_shorts_*_1000.bam`;
for item in $list
do
	if (( `expr $item : "head"` > 0 ))
	then 
		cp -T $item tt_a_chr_dgm_shorts_head_500.bam
		cp -T $item tt_a_chr_dgm_shorts_head_250.bam
	fi
done

list=`ls tt_a_chr_dgm_shorts_*_1000.bam`;
for item in $list
do
	if (( `expr $item : "legs"` > 0 ))
	then 
		cp -T $item tt_a_chr_dgm_shorts_legs_500.bam
		cp -T $item tt_a_chr_dgm_shorts_legs_250.bam
	fi
done

list=`ls tt_a_chr_dgm_shorts_*_1000.bam`;
for item in $list
do
	if (( `expr $item : "torso"` > 0 ))
	then 
		cp -T $item tt_a_chr_dgm_shorts_torso_500.bam
		cp -T $item tt_a_chr_dgm_shorts_torso_250.bam
	fi
done

//delete redundant models
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
//Medium
cp -T tt_a_chr_dgm_shorts_head_1000.bam tt_a_chr_dgm_shorts_head_500.bam;
cp -T tt_a_chr_dgm_shorts_head_1000.bam tt_a_chr_dgm_shorts_head_250.bam;
cp -T tt_a_chr_dgm_shorts_legs_1000.bam tt_a_chr_dgm_shorts_legs_500.bam;
cp -T tt_a_chr_dgm_shorts_legs_1000.bam tt_a_chr_dgm_shorts_legs_250.bam;
cp -T tt_a_chr_dgm_shorts_torso_1000.bam tt_a_chr_dgm_shorts_torso_500.bam;
cp -T tt_a_chr_dgm_shorts_torso_1000.bam tt_a_chr_dgm_shorts_torso_250.bam;
cp -T tt_a_chr_dgm_skirt_head_1000.bam tt_a_chr_dgm_skirt_head_500.bam;
cp -T tt_a_chr_dgm_skirt_head_1000.bam tt_a_chr_dgm_skirt_head_250.bam;
cp -T tt_a_chr_dgm_skirt_torso_1000.bam tt_a_chr_dgm_skirt_torso_500.bam;
cp -T tt_a_chr_dgm_skirt_torso_1000.bam tt_a_chr_dgm_skirt_torso_250.bam
//Long
cp -T tt_a_chr_dgl_shorts_head_1000.bam tt_a_chr_dgl_shorts_head_500.bam;
cp -T tt_a_chr_dgl_shorts_head_1000.bam tt_a_chr_dgl_shorts_head_250.bam;
cp -T tt_a_chr_dgl_shorts_legs_1000.bam tt_a_chr_dgl_shorts_legs_500.bam;
cp -T tt_a_chr_dgl_shorts_legs_1000.bam tt_a_chr_dgl_shorts_legs_250.bam;
cp -T tt_a_chr_dgl_shorts_torso_1000.bam tt_a_chr_dgl_shorts_torso_500.bam;
cp -T tt_a_chr_dgl_shorts_torso_1000.bam tt_a_chr_dgl_shorts_torso_250.bam;
cp -T tt_a_chr_dgl_skirt_torso_1000.bam tt_a_chr_dgl_skirt_torso_500.bam;
cp -T tt_a_chr_dgl_skirt_torso_1000.bam tt_a_chr_dgl_skirt_torso_250.bam
//Short
cp -T tt_a_chr_dgs_shorts_head_1000.bam tt_a_chr_dgs_shorts_head_500.bam;
cp -T tt_a_chr_dgs_shorts_head_1000.bam tt_a_chr_dgs_shorts_head_250.bam;
cp -T tt_a_chr_dgs_shorts_legs_1000.bam tt_a_chr_dgs_shorts_legs_500.bam;
cp -T tt_a_chr_dgs_shorts_legs_1000.bam tt_a_chr_dgs_shorts_legs_250.bam;
cp -T tt_a_chr_dgs_shorts_torso_1000.bam tt_a_chr_dgs_shorts_torso_500.bam;
cp -T tt_a_chr_dgs_shorts_torso_1000.bam tt_a_chr_dgs_shorts_torso_250.bam;
cp -T tt_a_chr_dgs_skirt_torso_1000.bam tt_a_chr_dgs_skirt_torso_500.bam;
cp -T tt_a_chr_dgs_skirt_torso_1000.bam tt_a_chr_dgs_skirt_torso_250.bam
//Rebuild lods
cd $TTMODELS/src/char
chars=`ls`
for folder in $chars
do
if [ -d "$folder" ]; then
cd $folder
if [ "$folder" = "dogm" -o "$folder" = "dogs" -o "$folder" = "dogl" ]; then
rm *500*egg;
rm *200*egg
fi
cd ..
fi
done 