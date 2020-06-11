//MEDIUM
//only default
list=`ls 'Z:\Toontown\toontown3D\animation\character\dgm\' | grep -i 'default'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\dgm\'$item;
done
//only animations
list=`ls 'Z:\Toontown\toontown3D\animation\character\dgm\' | grep -i 'tt_a_chr_dgm'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\dgm\'$item;
done
//only rigs
list=`ls 'Z:\Toontown\toontown3D\rig\character\dgm' | grep -i 'tt_r_chr_dgm'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\rig\character\dgm\'$item;
done

//LONG
//only default
list=`ls 'Z:\Toontown\toontown3D\animation\character\dgl\' | grep -i 'default'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\dgl\'$item;
done
//only animations
list=`ls 'Z:\Toontown\toontown3D\animation\character\dgl\' | grep -i 'tt_a_chr_dgl_'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\dgl\'$item;
done
//only rigs
list=`ls 'Z:\Toontown\toontown3D\rig\character\dgl' | grep -i 'tt_r_chr_dgl_'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\rig\character\dgl\'$item;
done

//SHORT
//only default
list=`ls 'Z:\Toontown\toontown3D\animation\character\dgs\' | grep -i 'default'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\dgs\'$item;
done
//only animations
list=`ls 'Z:\Toontown\toontown3D\animation\character\dgs\' | grep -i 'tt_a_chr_dgs_'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\animation\character\dgs\'$item;
done
//only rigs
list=`ls 'Z:\Toontown\toontown3D\rig\character\dgs' | grep -i 'tt_r_chr_dgs_'`;
for item in $list
do
    mayacopy -f 'Z:\Toontown\toontown3D\rig\character\dgs\'$item;
done