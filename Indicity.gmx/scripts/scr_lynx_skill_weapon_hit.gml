/// scr_lynx_skill_weapon_hit(min_dist, max_dist, attack_height, invert_direction)
var min_dist = argument0; // min x distance
var max_dist = argument1; // max x distance
var attack_height = argument2; // max y distance
var invert_direction = argument3; // attack oposite of look direction

var collisions = false; // Array of collisions
var attacker = parent; // Store player object
var lynx_object = object_index; // Store Lynx object

// Determine attack direction
if (invert_direction) var dir = -attacker.image_xscale;
else var dir = attacker.image_xscale;

// Calculate x distance
var xdist;
xdist[0] = min_dist*dir;
xdist[1] = max_dist*dir;

// Find friendly and enemy objects in collision
with (obj_collision_parent)
{
    if (object_index != attacker.object_index && ((
        object_is_ancestor(object_index, obj_friendly_parent) ||
        object_is_ancestor(object_index, obj_enemy_parent)) &&
        point_in_rectangle(x, y,
            attacker.x+min(xdist[0], xdist[1]),
            attacker.y-(attack_height/2),
            attacker.x+max(xdist[0], xdist[1]),
            attacker.y+(attack_height/2))))
    {
        scr_lynx_skill_hit(lynx_object, object_index);
    }
}
