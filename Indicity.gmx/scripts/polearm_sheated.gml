///sheated polearm
y=obj_player.y+1
image_xscale=obj_player.image_xscale*-1
depth=obj_player.depth+3
image_yscale=obj_player.image_yscale*-1

if obj_player.image_xscale>0
{
 image_angle=350
 x=obj_player.x+13
}
 else
{
 image_angle=10
 x=obj_player.x-13
}
