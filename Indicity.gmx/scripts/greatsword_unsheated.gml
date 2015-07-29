///unsheated greatsword
y=obj_player.y+8
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
 if obj_player.image_xscale>0{image_angle=10}else{image_angle=350}
}

if keyboard_check(global.key_down)
{
 if obj_player.image_xscale>0{image_angle=350}else{image_angle=10}
}

//reset image_angle
if (!keyboard_check(global.key_up)  and !keyboard_check(global.key_down)) or
   ( keyboard_check(global.key_up)  and  keyboard_check(global.key_down)) 
{
 image_angle=0
}
