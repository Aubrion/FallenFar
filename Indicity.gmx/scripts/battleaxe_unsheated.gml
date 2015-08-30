///unsheated greatsword
y=(obj_player.y+8)+o
image_xscale=obj_player.image_xscale
depth=obj_player.depth-3
image_yscale=obj_player.scale
//xposition
if obj_player.image_xscale>0
{
 x=obj_player.x+2
}
 else
{
 x=obj_player.x-2
}

//walking up or down effect
if keyboard_check(global.key_up)
{
 o=2
 if obj_player.image_xscale>0{image_angle=5}else{image_angle=355}
}

if keyboard_check(global.key_down)
{
 o=-2
 if obj_player.image_xscale>0{image_angle=355}else{image_angle=5}
}

if !keyboard_check(global.key_up) and !keyboard_check(global.key_down)
{
 o=0
}

//reset image_angle
if (!keyboard_check(global.key_up)  and !keyboard_check(global.key_down)) or
   ( keyboard_check(global.key_up)  and  keyboard_check(global.key_down)) 
{
 image_angle=0
}
