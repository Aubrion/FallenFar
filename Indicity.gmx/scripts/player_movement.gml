///Movement
if keyboard_check(global.key_up)
{
 if place_free(global.playerx,global.playery-movespeed/2){y-=movespeed/2}
}
if keyboard_check(global.key_down)
{
 if place_free(global.playerx,global.playery+movespeed/2){y+=movespeed/2}
}
if keyboard_check(global.key_left)
{
 if obj_weapon_parent.state!=2{image_xscale=-scale} 
 if place_free(global.playerx-movespeed,global.playery){x-=movespeed}
}
if keyboard_check(global.key_right)
{
 if obj_weapon_parent.state!=2{image_xscale=scale}
 if place_free(global.playerx+movespeed,global.playery){x+=movespeed}
}

///Animation
if !keyboard_check(global.key_up) and !keyboard_check(global.key_down)
and !keyboard_check(global.key_left) and !keyboard_check(global.key_right)
{
 image_speed=0.01 
}
 else
{
 image_speed=(movespeed/10)
}
