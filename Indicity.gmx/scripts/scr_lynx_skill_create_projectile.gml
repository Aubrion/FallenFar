/// scr_lynx_skill_create_projectile(x, y, projectile, speed, direction, lifetime)
var parentID = id;

// Create the projectile
var inst = instance_create(argument0, argument1, argument2);
with(inst)
{
    // Pass on arguments
    spd = argument3;
    dir = argument4;
    lifetime = argument5;
    
    // Pass a reference to the obj_lynx that created it
    parent = parentID;
}

// Store the instance in the obj_lynx that created it
projectiles[array_length_1d(projectiles)] = inst;
