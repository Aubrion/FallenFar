/// scr_lynx_artificial_damage_boost(init, i, j)
var init = argument0;
var i = argument1;
var j = argument2;

// Init code
if (init)
{
    damage_boost += 0.1; // Boost damage by 10%
    scr_lynx_skill_part_finished(i, j);
}

// Step code
else
{
}
