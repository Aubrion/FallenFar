/// scr_lynx_init()
/// Create the array holding all the lynx parts

/*
Template:
lynx[id,0] = "name";
lynx[id,1] = type (obj_regelaar.lynx_type enum);
lynx[id,2] = script_name;
*/

lynx[0,0] = "Body Example";
lynx[0,1] = lynx_type.body;
lynx[0,2] = scr_lynx_body_example;

lynx[1,0] = "Meteor Strike";
lynx[1,1] = lynx_type.body;
lynx[1,2] = scr_lynx_body_meteor_strike;
