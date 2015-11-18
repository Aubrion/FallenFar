///gs_defend
if keyboard_check_released(global.skill_defend)
{
 //t
 state=1
 obj_player.state=0
 step=-1
}
 else
{
 y=obj_player.y-7
 obj_player.state=2
 image_xscale=obj_player.image_xscale*-1
 image_yscale=obj_player.image_yscale*-1
 if obj_player.image_xscale>0
 {
  image_angle=340
  x=obj_player.x-18
 }
  else
 {
  image_angle=20
  x=obj_player.x+18
 }
}
