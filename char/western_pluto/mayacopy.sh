//RIGS
list=`ls 'Z:\Toontown\toontown3D\rig\character\pluto\' | grep -i 'tt_r_chr_csc_plutoCostume'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\rig\character\pluto\'$item;
done

//ANIMATION
list=`ls 'Z:\Toontown\toontown3D\animation\character\pluto\' | grep -i 'tt_a_chr_csc_plutoCostume'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\pluto\'$item;
done