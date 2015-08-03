/// scr_lynx_init()
/// Create the array holding all the lynx parts

/*
Template:
lynx[id,0] = "name";
lynx[id,1] = type (lynx_type enum);
lynx[id,2] = script_name;
*/

lynx[0,0] = "Meteor Strike";
lynx[0,1] = lynx_type.body;
lynx[0,2] = scr_lynx_body_meteor_strike;

lynx[1,0] = "Projectile";
lynx[1,1] = lynx_type.mind;
lynx[1,2] = scr_lynx_mind_projectile;
