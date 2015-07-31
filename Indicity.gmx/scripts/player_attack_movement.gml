///player_attack_movement(dir,steps)
if argument0=0
{
 if place_free(global.playerx+argument1,global.playery)
 {
  obj_player.x+=argument1
  obj_player.image_speed=(argument1/20)
 }
}
if argument0=90
{
 if place_free(global.playerx,global.playery+argument1)
 {
  obj_player.y+=argument1
  obj_player.image_speed=(argument1/40) 
 }
}
if argument0=180
{
 if place_free(global.playerx-argument1,global.playery)
 {
  obj_player.x-=argument1
  obj_player.image_speed=(argument1/20) 
 }
}
if argument0=270
{
 if place_free(global.playerx,global.playery-argument1)
 {
  obj_player.y-=argument1
  obj_player.image_speed=(argument1/40) 
 }
}
