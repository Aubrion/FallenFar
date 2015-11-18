//info
maxstep=37
if step<maxstep{step+=global.attackspeed}else{obj_player.state=0 step=-1 state=1}

///Greatweapon
if instance_exists(obj_twohanded)
{
 if step=0 
 {
  obj_player.state=1
  image_angle=0
  image_xscale=obj_player.image_xscale  
  image_yscale=-obj_player.scale
 }
 
 if step>=1 and step<=30
 {
  y=obj_player.y+4
  if image_xscale>0
  {
   image_angle-=6
   x=obj_player.x-(8-(step/2))
  }
   else               
  {
   image_angle+=6
   x=obj_player.x+(8-(step/2))
  } 
 }
  
 if step>30
 {
  y=obj_player.y+6
  if image_xscale>0
  {
   x=obj_player.x+3
  }
   else
  {
   x=obj_player.x-3
  } 
 }

///movement and effect
 if step<10
 {
  scr_blur(20,2)
  if image_xscale>0
  {
   player_attack_movement(0,1.3)
  }
   else
  {
   player_attack_movement(180,1.3)
  }
 }
 if step>10 and step<30
 {
  scr_blur(20,5)
  if image_xscale>0
  {
   player_attack_movement(0,0.5)
  }
   else
  {
   player_attack_movement(180,0.5)
  }
 } 
}
