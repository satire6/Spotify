list=`ls -l 'Z:\Toontown\toontown3D\texture\character\avatar\clothing' | grep 'Sep 14' | cut -d ':' -f 2 | cut -d ' ' -f 2 | grep 'tt_'`;
egg-texture-cards $list -o special-award-clothes-2.egg

list=`ls 'Z:\Toontown\toontown3D\texture\character\avatar\clothing' | grep 'halloween' | grep '.tif'`;
egg-texture-cards $list -o special-award-clothes-3.egg