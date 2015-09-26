///sheated greatsword
y=obj_player.y-2
image_xscale=obj_player.image_xscale
depth=obj_player.depth+3
image_yscale=obj_player.scale*-1

if obj_player.image_xscale>0
{
 image_angle=10
 x=obj_player.x+30
}
 else
{
 image_angle=350
 x=obj_player.x-30
}
