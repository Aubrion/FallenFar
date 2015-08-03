// scr_lynx_mind_projectile(init, i, j)
var init = argument0;
var i = argument1;
var j = argument2;

// Init code
if (init)
{
    damage += 10;
}

// Step code
else
{
    if (runtime >= 10)
    {
        var dir = ((obj_player.image_xscale <= 0) * 180) + 0; // Direction player is facing
        scr_lynx_skill_create_projectile(obj_player.x, obj_player.y, obj_lynx_projectile0, 4, dir, room_speed);
        scr_lynx_skill_part_finished(i,j);
    }
}
