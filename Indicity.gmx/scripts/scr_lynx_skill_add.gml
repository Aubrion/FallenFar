/// scr_lynx_skill_add(mind, body, element, artificial, name, mana_cost)
/// This script will try to find the first empty skill slot and insert it.
/// Returns: inserted slot (0-based) on succes, -1 otherwise

// Find first array
var i = scr_lynx_skill_first_empty();

// If empty slot is found, add skill to that slot
if (i > -1)
    	scr_lynx_skill_set(i, argument0, argument1, argument2, argument3, argument4, argument5);

// Return slot number
return i;
