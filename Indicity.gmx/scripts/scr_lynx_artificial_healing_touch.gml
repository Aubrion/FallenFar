/// scr_lynx_artificial_healing_touch(init, i, j)
var init = argument0;
var i = argument1;
var j = argument2;

// Init code
if (init)
{
    heal_for_damage_percent = 0.50; // Heals target for half the skill damage
    scr_lynx_skill_part_finished(i, j);
}

// Step code
else
{
}
