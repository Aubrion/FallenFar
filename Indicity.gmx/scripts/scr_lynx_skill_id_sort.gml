/// scr_lynx_skill_id_sort(id_array)
/// Takes an 1D array with lynx-part ids and turns it an 2D array, sorted by type
var id_array = argument0;
var result, index;
var temp0, temp1, temp2, temp3;

// Fill each temp array with -1, which stands for empty
temp0[0] = -1;
temp1[0] = -1;
temp2[0] = -1;
temp3[0] = -1;

// Loop through submitted IDs
for (var i = 0; i < array_length_1d(id_array); i++)
{
    // Add value to the correct array
    switch (obj_regelaar.lynx[id_array[i],1])
    {
        case lynx_type.element:
            if (temp0[0] == -1) {temp0[0] = id_array[i];}
            else {temp0[array_length_1d(temp0)] = id_array[i];}
            break;
        case lynx_type.body:
            if (temp1[0] == -1) {temp1[0] = id_array[i];}
            else {temp1[array_length_1d(temp1)] = id_array[i];}
            break;
        case lynx_type.mind:
            if (temp2[0] == -1) {temp3[0] = id_array[i];}
            else {temp2[array_length_1d(temp2)] = id_array[i];}
            break;
        case lynx_type.artificial:
            if (temp3[0] == -1) {temp3[0] = id_array[i];}
            else {temp3[array_length_1d(temp3)] = id_array[i];}
            break;
    }
}

// Combine temp arrays
for (var i = 0; i < array_length_1d(temp0); i++)
    result[0,i] = temp0[i];
for (var i = 0; i < array_length_1d(temp1); i++)
    result[1,i] = temp1[i];
for (var i = 0; i < array_length_1d(temp2); i++)
    result[2,i] = temp2[i];
for (var i = 0; i < array_length_1d(temp3); i++)
    result[3,i] = temp3[i];

// Return sorted 2D array
return result;
