///player_attack_movement(dir,steps)
with (obj_player)
{
 if argument0=0
 {
  if place_free(global.playerx+argument1,y)
  {
   x+=argument1
  }
 }
 if argument0=90
 {
  if place_free(global.playerx,y+argument1)
  {
   y+=argument1 
  }
 }
 if argument0=180
 {
  if place_free(global.playerx-argument1,y)
  {
   x-=argument1 
  }
 }
 if argument0=270
 {
  if place_free(global.playerx,y-argument1)
  {
   y-=argument1
  }
 }
}
