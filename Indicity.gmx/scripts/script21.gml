maxstep = ceil (37 / global.attackspeed)

if step < maxstep
    step++
else
    obj_player.state=0 step=-1 state=1

///Greatweapon
if instance_exists(obj_twohanded)
{
    var rotation_end = ceil(30 / global.attackspeed);
    var total_rotation = 180; // Total degrees of the rotation, negative if clockwise
    var rotation_step = ceil(total_rotation / rotation_end); // Calculate degrees to rotate each step

    if step=0 
    {
        obj_player.state=1
        image_angle=0
        image_xscale=obj_player.image_xscale  
        image_yscale=-obj_player.scale
    }

    if step>=1 and step<=rotation_end
    {
        y=obj_player.y+6
        if image_xscale>0
        {
            image_angle-=rotation_step
            x=obj_player.x+2
        }
        else
        {
            image_angle+=rotation_step
            x=obj_player.x-2
        }
    }
}

