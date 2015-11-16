///gs_defend
if !keyboard_check(global.skill_attack)
{
 obj_player.state=0
 state=1 
}
 else
{
 obj_player.state=2
 image_xscale=obj_player.image_xscale*-1
 image_yscale=obj_player.image_yscale*-1
 if obj_player.image_xscale>0
 {
  image_angle=20
 }
  else
 {
  image_angle=340
 }
}
