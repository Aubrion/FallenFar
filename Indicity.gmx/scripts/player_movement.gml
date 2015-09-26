///Movement
if keyboard_check(global.key_up)
{
 if place_free(x,y-(movespeed/2)){y-=movespeed/2}
}
if keyboard_check(global.key_left)
{
 if obj_weapon_parent.state!=2{image_xscale=-scale} 
 if place_free((x)-movespeed,y){x-=movespeed}
}
if keyboard_check(global.key_down)
{
 if place_free(x,y+(movespeed/2)){y+=movespeed/2}
}
if keyboard_check(global.key_right)
{
 if obj_weapon_parent.state!=2{image_xscale=scale}
 if place_free((x)+movespeed,y){x+=movespeed}
}

///Animation
if !keyboard_check(global.key_up) and !keyboard_check(global.key_down)
and !keyboard_check(global.key_left) and !keyboard_check(global.key_right)
{
 image_speed=0.01 
}
 else
{
 if keyboard_check(global.key_up) or keyboard_check(global.key_down)
 {
  image_speed=(movespeed/15)
 }
 if keyboard_check(global.key_left) or keyboard_check(global.key_right)
 {
  image_speed=(movespeed/10)
 }
}
