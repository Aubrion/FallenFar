/// scr_lynx_skill_set(index, part_array, name, mana_cost)
// Mind, Body, Element and Artificial have to be arrays
// Insert skill in the specified slot, overwriting the current value in it

// Sort submitted IDs in an 2D array
var a = scr_lynx_skill_id_sort(argument1);

// Store other info
a[4,0] = argument2;
a[4,1] = argument3;

// Store the array in the specified index
switch (argument0)
{
    case 0: lynx_skill0 = a; break;
    case 1: lynx_skill1 = a; break;
    case 2: lynx_skill2 = a; break;
    case 3: lynx_skill3 = a; break;
    case 4: lynx_skill4 = a; break;
    case 5: lynx_skill5 = a; break;
    case 6: lynx_skill6 = a; break;
    case 7: lynx_skill7 = a; break;
    case 8: lynx_skill8 = a; break;
}
