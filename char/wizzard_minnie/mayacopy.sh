//RIGS
list=`ls 'Z:\Toontown\toontown3D\rig\character\minnie\' | grep -i 'tt_r_chr_csc_witch'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\rig\character\minnie\'$item;
done

//ANIMATION
list=`ls 'Z:\Toontown\toontown3D\animation\character\minnie\' | grep -i 'tt_a_chr_csc_witch'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\minnie\'$item;
done