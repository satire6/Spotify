//RIGS
list=`ls 'Z:\Toontown\toontown3D\rig\character\goofy\' | grep -i 'tt_r_chr_csc_goofyCostume'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\rig\character\goofy\'$item;
done

//ANIMATION
list=`ls 'Z:\Toontown\toontown3D\animation\character\goofy\' | grep -i 'tt_a_chr_csc_goofyCostume'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\goofy\'$item;
done