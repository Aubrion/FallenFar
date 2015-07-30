/// scr_lynx_skill_first_empty()
/// Returns index of first empty skill slot, or -1 if all are full

// Find first empty
if array_height_2d(lynx_skill0 == 0) { return 0 };
if array_height_2d(lynx_skill1 == 0) { return 1 };
if array_height_2d(lynx_skill2 == 0) { return 2 };
if array_height_2d(lynx_skill3 == 0) { return 3 };
if array_height_2d(lynx_skill4 == 0) { return 4 };
if array_height_2d(lynx_skill5 == 0) { return 5 };
if array_height_2d(lynx_skill6 == 0) { return 6 };
if array_height_2d(lynx_skill7 == 0) { return 7 };
if array_height_2d(lynx_skill8 == 0) { return 8 };

// All are full
return -1;
