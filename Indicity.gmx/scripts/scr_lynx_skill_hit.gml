/// scr_lynx_skill_hit(lynx_object, target)
// Run this script for each target that was hit by a skill
var lynx = argument0;
var target = argument1;

// Add all negative effects (damage, debuffs, status effects, etc) here
if (object_is_ancestor(target.object_index, obj_enemy_parent))
{
    target.hp -= lynx.damage + (lynx.damage * lynx.damage_boost); // Deal boosted damage to enemy
}

// Add all positive effects (healing, buffs, etc) here
else if (object_is_ancestor(target.object_index, obj_friendly_parent))
{
    target.hp += (lynx.damage + lynx.damage * lynx.damage_boost) * lynx.heal_for_damage_percent // Heal for a percentage of boosteed damage
}
