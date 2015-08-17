/// scr_lynx_init()
/// Create the array holding all the lynx parts

/*
Template:
lynx[id,0] = "name";
lynx[id,1] = type (lynx_type enum);
lynx[id,2] = script_name;
*/

lynx[0,0] = "Death";
lynx[0,1] = lynx_type.element;
lynx[0,2] = scr_lynx_element_death;

lynx[1,0] = "Earth";
lynx[1,1] = lynx_type.element;
lynx[1,2] = scr_lynx_element_earth;

lynx[2,0] = "Electro";
lynx[2,1] = lynx_type.element;
lynx[2,2] = scr_lynx_element_electro;

lynx[3,0] = "Fire";
lynx[3,1] = lynx_type.element;
lynx[3,2] = scr_lynx_element_fire;

lynx[4,0] = "Life";
lynx[4,1] = lynx_type.element;
lynx[4,2] = scr_lynx_element_life;

lynx[5,0] = "Water";
lynx[5,1] = lynx_type.element;
lynx[5,2] = scr_lynx_element_water;

lynx[6,0] = "Wind";
lynx[6,1] = lynx_type.element;
lynx[6,2] = scr_lynx_element_wind;

lynx[7,0] = "Meteor Strike";
lynx[7,1] = lynx_type.body;
lynx[7,2] = scr_lynx_body_meteor_strike;

lynx[8,0] = "Projectile";
lynx[8,1] = lynx_type.mind;
lynx[8,2] = scr_lynx_mind_projectile;
