// scr_lynx_element_electro(init, i, j)
var init = argument0;
var i = argument1;
var j = argument2;

// Init code
if (init)
{
    scr_lynx_skill_element_add(elements.electro);
    scr_lynx_skill_part_finished(i,j);
}

// Step code
else
{
}
