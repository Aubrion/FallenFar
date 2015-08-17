/// scr_lynx_skill_elements_combine()
/// run inside obj_lynx
/// sets the value of element_final
var list_size = array_length_1d(element_list);

// No elements
if (list_size < 1)
{
    show_message("Skill has no elements");
    game_end();
}

// Only one element
else if (list_size == 1)
{
    element_final = element_list[0];
}

// 2 elements
else
{
    var e0 = element_list[0];
    var e1 = element_list[1];

    // Fire combos
    if (e0 == elements.fire && e1 == elements.fire)
        element_final = elements.flame;
    else if (e0 == elements.fire && e1 == elements.wind || e0 == elements.wind && e1 == elements.fire)
        element_final = elements.blaze;
    else if (e0 == elements.fire && e1 == elements.earth || e0 == elements.earth && e1 == elements.fire)
        element_final = elements.scorch;
    else if (e0 == elements.fire && e1 == elements.electro || e0 == elements.electro && e1 == elements.fire)
        element_final = elements.blast;
    else if (e0 == elements.fire && e1 == elements.water || e0 == elements.water && e1 == elements.fire)
        element_final = elements.smoke;
    else if (e0 == elements.fire && e1 == elements.death || e0 == elements.death && e1 == elements.fire)
        element_final = elements.torment;
    else if (e0 == elements.fire && e1 == elements.life || e0 == elements.life && e1 == elements.fire)
        element_final = elements.passion;

    // Wind combos
    if (e0 == elements.wind && e1 == elements.wind)
        element_final = elements.tornado;
    else if (e0 == elements.wind && e1 == elements.earth || e0 == elements.earth && e1 == elements.wind)
        element_final = elements.gross;
    else if (e0 == elements.wind && e1 == elements.electro || e0 == elements.electro && e1 == elements.wind)
        element_final = elements.storm;
    else if (e0 == elements.wind && e1 == elements.water || e0 == elements.water && e1 == elements.wind)
        element_final = elements.whirl;
    else if (e0 == elements.wind && e1 == elements.death || e0 == elements.death && e1 == elements.wind)
        element_final = elements.dread;
    else if (e0 == elements.wind && e1 == elements.life || e0 == elements.life && e1 == elements.wind)
        element_final = elements.motion;

    // Earth combos
    if (e0 == elements.earth && e1 == elements.earth)
        element_final = elements.gravity;
    else if (e0 == elements.earth && e1 == elements.electro || e0 == elements.electro && e1 == elements.earth)
        element_final = elements.carbon;
    else if (e0 == elements.earth && e1 == elements.water || e0 == elements.water && e1 == elements.earth)
        element_final = elements.ancient;
    else if (e0 == elements.earth && e1 == elements.death || e0 == elements.death && e1 == elements.earth)
        element_final = elements.decay;
    else if (e0 == elements.earth && e1 == elements.life || e0 == elements.life && e1 == elements.earth)
        element_final = elements.titan;

    // Electro combos
    if (e0 == elements.electro && e1 == elements.electro)
        element_final = elements.thunder;
    else if (e0 == elements.electro && e1 == elements.water || e0 == elements.water && e1 == elements.electro)
        element_final = elements.conduction;
    else if (e0 == elements.electro && e1 == elements.death || e0 == elements.death && e1 == elements.electro)
        element_final = elements.voltage;
    else if (e0 == elements.electro && e1 == elements.life || e0 == elements.life && e1 == elements.electro)
        element_final = elements.hope;

    // Water combos
    if (e0 == elements.water && e1 == elements.water)
        element_final = elements.current;
    else if (e0 == elements.water && e1 == elements.death || e0 == elements.death && e1 == elements.water)
        element_final = elements.poison;
    else if (e0 == elements.water && e1 == elements.life || e0 == elements.life && e1 == elements.water)
        element_final = elements.sacrifice;

    // Life & Death combos
    if (e0 == elements.life && e1 == elements.life)
        element_final = elements.light;
    if (e0 == elements.death && e1 == elements.death)
        element_final = elements.darkness;
    else if (e0 == elements.death && e1 == elements.life || e0 == elements.life && e1 == elements.death)
        element_final = elements.chaos;
}
