maxstep=40
if step<maxstep{step++}else{obj_player.state=0 step=-1 state=1}
///Greatsword
if instance_exists(obj_greatsword)
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
  y=obj_player.y+6
  if image_xscale>0
  {
   image_angle-=6
   x=obj_player.x+2
   player_attack_movement(0,1)
  }
   else
  {
   image_angle+=6
   x=obj_player.x-2
   player_attack_movement(180,1)
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
}
///Polearm
if instance_exists(obj_polearm)
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
  y=obj_player.y+6
  if image_xscale>0
  {
   image_angle-=6
   x=obj_player.x+2
   player_attack_movement(0,1)
  }
   else
  {
   image_angle+=6
   x=obj_player.x-2
   player_attack_movement(180,1)
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
}







































