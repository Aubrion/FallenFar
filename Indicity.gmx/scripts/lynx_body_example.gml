///lynx_body_example()
maxstep=15
if step<maxstep{step++}else{state=1 step=-1}

///meteor strike EXAMPLE
if step=0 
{
 image_angle=0
 image_xscale=obj_player.image_xscale  
 image_yscale=-obj_player.scale
}

if step>0 and step<99
{
 y=obj_player.y+6
 if image_xscale>0
 {
  image_angle-=12
  x=obj_player.x+2
 }
  else
 {
  image_angle+=12
  x=obj_player.x-2
 } 
}
 
if step=100
{
 image_angle=0
}
