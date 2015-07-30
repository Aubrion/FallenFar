/// scr_lynx_skill_set(index, mind, body, element, artificial, name, mana_cost)
// Mind, Body, Element and Artificial have to be arrays
// Insert skill in the specified slot, overwriting the current value in it

// Store mind parts
for (var i = 0; i < array_length_1d(argument1); i++)
a[0,i] = argument1[i];

// Store mind parts
for (var i = 0; i < array_length_1d(argument2); i++)
a[1,i] = argument2[i];

// Store mind parts
for (var i = 0; i < array_length_1d(argument3); i++)
a[2,i] = argument3[i];

// Store mind parts
for (var i = 0; i < array_length_1d(argument4); i++)
a[3,i] = argument4[i];

// Store other info
a[4,0] = argument5;
a[4,1] = argument6;

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
