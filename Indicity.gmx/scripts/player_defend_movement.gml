///Movement
if keyboard_check(global.key_up)
{
 if place_free(x,y-(movespeed/6)){y-=movespeed/6}
 ylook=-1
}
if keyboard_check(global.key_left)
{ 
 if place_free((x)-movespeed/2,y){x-=movespeed/2}
}
if keyboard_check(global.key_down)
{
 if place_free(x,y+(movespeed/6)){y+=movespeed/6}
 ylook=1
}
if keyboard_check(global.key_right)
{
 if place_free((x)+movespeed/2,y){x+=movespeed/2}
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
  image_speed=(movespeed/30)
 }
 if keyboard_check(global.key_left) or keyboard_check(global.key_right)
 {
  image_speed=(movespeed/20)
 }
}
