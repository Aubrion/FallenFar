/// scr(init, i, j)
var init = argument0;
var i = argument1;
var j = argument2;
var finished = false;

// Init code
if (init)
{
}

// Step code
else
{
    with (obj_weapon_parent)
    {
        ///lynx_body_example()
        maxstep=20
        if step<maxstep{step++}else{state=1 step=-1 finished=true}
    
        ///meteor strike EXAMPLE
        if step=0 
        {
            image_angle=0
            image_xscale=obj_player.image_xscale  
            image_yscale=-obj_player.scale
        }
    
        if step>=1 and step<=15
        {
            y=obj_player.y+6
            if image_xscale>0
            {
                image_angle-=12
                x=obj_player.x+2
            }
            else
            {
                image_angle+=12
                x=obj_player.x-2
            } 
        }
    
        if step>=16
        {
            y=obj_player.y+6
            if image_xscale>0
            {
                x=obj_player.x+3
            }
            else
            {
                x=obj_player.x-3
            }
        }
    }
    
    // Signal part is finished
    if (finished)
        scr_lynx_skill_part_finished(i,j);
}
