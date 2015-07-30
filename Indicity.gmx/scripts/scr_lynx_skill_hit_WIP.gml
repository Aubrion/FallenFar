/// scr_lynx_skill_hit(target)
// Run this script for each legal target that was hit by a skill
var target = argument0;

// Add all negative effects (damage, debuffs, status effects, etc) here
if (object_is_ancestor(target.object_index, obj_enemy_parent))
{
    target.hp -= damage + (damage * damage_boost); // Deal boosted damage to enemy
}

// Add all positive effects (healing, buffs, etc) here
else
{
}
