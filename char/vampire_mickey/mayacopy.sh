//RIGS
list=`ls 'Z:\Toontown\toontown3D\rig\character\mickey\' | grep -i 'tt_r_chr_csc_mickey_vampire'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\rig\character\mickey\'$item;
done

//ANIMATION
list=`ls 'Z:\Toontown\toontown3D\animation\character\mickey\' | grep -i 'tt_a_chr_csc_mickey_vampire'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\mickey\'$item;
done